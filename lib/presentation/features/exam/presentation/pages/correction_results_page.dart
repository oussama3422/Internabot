import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../core/theme/app_theme.dart';
import '../../../../../domain/entities/correction_entity.dart';

class CorrectionResultsPage extends ConsumerStatefulWidget {
  final String correctionId;

  const CorrectionResultsPage({
    super.key,
    required this.correctionId,
  });

  @override
  ConsumerState<CorrectionResultsPage> createState() => _CorrectionResultsPageState();
}

class _CorrectionResultsPageState extends ConsumerState<CorrectionResultsPage> {
  // TODO: Load correction from repository using correctionId

  @override
  Widget build(BuildContext context) {
    // Mock data for demonstration
    final mockCorrection = CorrectionEntity(
      id: widget.correctionId,
      submissionId: 'submission_123',
      userId: 'user_123',
      overallScore: 75.5,
      questionCorrections: [
        QuestionCorrection(
          questionNumber: 1,
          score: 8.0,
          maxScore: 10.0,
          feedback: 'Bonne compréhension du concept, mais manque de détails cliniques.',
          strengths: ['Structure claire', 'Terminologie correcte'],
          improvements: ['Ajouter des exemples cliniques', 'Détailler la physiopathologie'],
        ),
        QuestionCorrection(
          questionNumber: 2,
          score: 7.5,
          maxScore: 10.0,
          feedback: 'Réponse partiellement correcte.',
          strengths: ['Approche méthodique'],
          improvements: ['Revoir les mécanismes d\'action'],
        ),
      ],
      references: [
        MedicalReference(
          title: 'Harrison\'s Principles of Internal Medicine',
          source: 'Harrison\'s',
          pageNumber: '245-250',
        ),
        MedicalReference(
          title: 'Guide de l\'internat',
          source: 'FMPM',
          pageNumber: '120',
        ),
      ],
      methodologyFeedback:
          'Votre approche est structurée. Continuez à développer vos réponses avec plus de détails cliniques et de références.',
      correctedAt: DateTime.now(),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Résultats de correction'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Overall Score Card
            Card(
              color: AppTheme.primaryBlue,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    Text(
                      'Score Global',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: AppTheme.neutralWhite,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${mockCorrection.overallScore.toStringAsFixed(1)} / 100',
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                            color: AppTheme.neutralWhite,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Question Corrections
            Text(
              'Détails par question',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            ...mockCorrection.questionCorrections.map((qc) => Card(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Question ${qc.questionNumber}',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: qc.score / qc.maxScore >= 0.7
                                    ? AppTheme.secondaryGreen
                                    : AppTheme.accentOrange,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                '${qc.score.toStringAsFixed(1)} / ${qc.maxScore.toStringAsFixed(1)}',
                                style: const TextStyle(
                                  color: AppTheme.neutralWhite,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Text(
                          qc.feedback,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        if (qc.strengths.isNotEmpty) ...[
                          const SizedBox(height: 12),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.check_circle,
                                color: AppTheme.secondaryGreen,
                                size: 20,
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Points forts:',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    ...qc.strengths.map(
                                      (s) => Text('• $s'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                        if (qc.improvements.isNotEmpty) ...[
                          const SizedBox(height: 12),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.trending_up,
                                color: AppTheme.accentOrange,
                                size: 20,
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'À améliorer:',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    ...qc.improvements.map(
                                      (i) => Text('• $i'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ],
                    ),
                  ),
                )),
            const SizedBox(height: 24),
            // References
            Text(
              'Références médicales',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            ...mockCorrection.references.map((ref) => Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    leading: const Icon(Icons.book, color: AppTheme.primaryBlue),
                    title: Text(ref.title),
                    subtitle: Text('${ref.source}${ref.pageNumber != null ? ' - Page ${ref.pageNumber}' : ''}'),
                    trailing: ref.url != null
                        ? IconButton(
                            icon: const Icon(Icons.open_in_new),
                            onPressed: () {
                              // TODO: Open URL
                            },
                          )
                        : null,
                  ),
                )),
            const SizedBox(height: 24),
            // Methodology Feedback
            Card(
              color: AppTheme.neutralLightGray,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.lightbulb,
                          color: AppTheme.accentOrange,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Conseils méthodologiques',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      mockCorrection.methodologyFeedback,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

