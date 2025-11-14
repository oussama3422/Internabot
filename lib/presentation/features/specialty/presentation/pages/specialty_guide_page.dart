import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../core/theme/app_theme.dart';

class SpecialtyGuidePage extends ConsumerStatefulWidget {
  const SpecialtyGuidePage({super.key});

  @override
  ConsumerState<SpecialtyGuidePage> createState() => _SpecialtyGuidePageState();
}

class _SpecialtyGuidePageState extends ConsumerState<SpecialtyGuidePage> {
  bool _isLoading = false;
  String? _recommendedSpecialty;
  String? _recommendationReason;

  Future<void> _getRecommendation() async {
    setState(() {
      _isLoading = true;
      _recommendedSpecialty = null;
      _recommendationReason = null;
    });

    // TODO: Call actual AI API for specialty recommendation
    await Future.delayed(const Duration(seconds: 2));

    if (mounted) {
      setState(() {
        _recommendedSpecialty = 'Médecine Interne';
        _recommendationReason =
            'Basé sur vos performances et intérêts, la médecine interne semble être un excellent choix. Vos scores dans les domaines de la pathologie générale et votre approche méthodique correspondent bien à cette spécialité.';
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guide des spécialités'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Trouvez votre spécialité',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(height: 8),
            Text(
              'Obtenez des recommandations personnalisées basées sur vos performances',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Recommandation IA',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 16),
                    if (_isLoading)
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.all(32),
                          child: CircularProgressIndicator(),
                        ),
                      )
                    else if (_recommendedSpecialty != null) ...[
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: AppTheme.secondaryGreen.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: AppTheme.secondaryGreen),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.medical_services,
                              size: 48,
                              color: AppTheme.secondaryGreen,
                            ),
                            const SizedBox(height: 12),
                            Text(
                              _recommendedSpecialty!,
                              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                    color: AppTheme.secondaryGreen,
                                    fontWeight: FontWeight.bold,
                                  ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              _recommendationReason!,
                              style: Theme.of(context).textTheme.bodyMedium,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ] else
                      Text(
                        'Cliquez sur le bouton ci-dessous pour obtenir une recommandation personnalisée basée sur vos performances et vos intérêts.',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    const SizedBox(height: 24),
                    ElevatedButton.icon(
                      onPressed: _isLoading ? null : _getRecommendation,
                      icon: const Icon(Icons.auto_awesome),
                      label: const Text('Obtenir une recommandation'),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Spécialités disponibles',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            // Specialty List
            ..._specialties.map((specialty) => Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: AppTheme.primaryBlue.withOpacity(0.1),
                      child: Icon(
                        Icons.medical_services,
                        color: AppTheme.primaryBlue,
                      ),
                    ),
                    title: Text(specialty),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // TODO: Show specialty details
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Détails de $specialty à venir')),
                      );
                    },
                  ),
                )),
          ],
        ),
      ),
    );
  }

  static const List<String> _specialties = [
    'Médecine Interne',
    'Chirurgie Générale',
    'Pédiatrie',
    'Gynécologie-Obstétrique',
    'Anesthésie-Réanimation',
    'Radiologie',
    'Dermatologie',
    'Ophtalmologie',
    'ORL',
    'Psychiatrie',
    'Neurologie',
    'Cardiologie',
  ];
}

