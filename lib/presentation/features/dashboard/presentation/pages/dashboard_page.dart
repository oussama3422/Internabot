import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/theme/app_theme.dart';
import '../../../../../domain/entities/progress_entity.dart';
import '../../../../../features/tracking/providers/progress_providers.dart';

class DashboardPage extends ConsumerStatefulWidget {
  const DashboardPage({super.key});

  @override
  ConsumerState<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends ConsumerState<DashboardPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          _HomeTab(
            onNavigateToProgress: () => setState(() => _selectedIndex = 1),
          ),
          const _ProgressTab(),
          const _ChatTab(),
          const _ProfileTab(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() => _selectedIndex = index);
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppTheme.primaryBlue,
        unselectedItemColor: AppTheme.neutralGray,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            label: 'Progrès',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}

class _HomeTab extends StatelessWidget {
  final VoidCallback onNavigateToProgress;

  const _HomeTab({
    required this.onNavigateToProgress,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InternaBot'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {
              // TODO: Show notifications
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Welcome Card
            Card(
              color: AppTheme.primaryBlue,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bienvenue!',
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                color: AppTheme.neutralWhite,
                              ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Préparez-vous efficacement pour le concours d\'internat',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppTheme.neutralWhite,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Quick Actions
            Text(
              'Actions rapides',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 1.2,
              children: [
                _ActionCard(
                  icon: Icons.camera_alt,
                  title: 'Soumettre une copie',
                  color: AppTheme.secondaryGreen,
                  onTap: () => context.push('/exam/submit'),
                ),
                _ActionCard(
                  icon: Icons.chat_bubble,
                  title: 'Chat avec l\'IA',
                  color: AppTheme.accentOrange,
                  onTap: () => context.push('/chat'),
                ),
                _ActionCard(
                  icon: Icons.trending_up,
                  title: 'Mes progrès',
                  color: AppTheme.primaryBlue,
                  onTap: onNavigateToProgress,
                ),
                _ActionCard(
                  icon: Icons.medical_services,
                  title: 'Guide spécialités',
                  color: AppTheme.secondaryGreen,
                  onTap: () => context.push('/specialty'),
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Recent Corrections
            Text(
              'Corrections récentes',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            // TODO: Load actual corrections
            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: AppTheme.secondaryGreen,
                  child: Icon(Icons.check_circle, color: AppTheme.neutralWhite),
                ),
                title: const Text('Correction #1'),
                subtitle: const Text('Score: 75.5/100'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  context.push('/exam/correction/correction_123');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final VoidCallback onTap;

  const _ActionCard({
    required this.icon,
    required this.title,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: color),
              const SizedBox(height: 12),
              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProgressTab extends ConsumerWidget {
  const _ProgressTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final progressAsync = ref.watch(progressControllerProvider);
    final notifier = ref.watch(progressControllerProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mes progrès'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: progressAsync.isLoading ? null : notifier.refresh,
          ),
        ],
      ),
      body: progressAsync.when(
        data: (metrics) => _ProgressContent(
          metrics: metrics,
          onRefresh: notifier.refresh,
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => _ProgressError(
          message: error.toString(),
          onRetry: notifier.refresh,
        ),
      ),
    );
  }
}

class _ProgressContent extends StatelessWidget {
  final ProgressMetricsEntity metrics;
  final Future<void> Function() onRefresh;

  const _ProgressContent({
    required this.metrics,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      color: AppTheme.primaryBlue,
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _ReadinessCard(metrics: metrics),
            const SizedBox(height: 24),
            _ScoreTrendCard(metrics: metrics),
            const SizedBox(height: 24),
            Text(
              'Statistiques',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: _StatCard(
                    label: 'Copies corrigées',
                    value: metrics.totalCorrections.toString(),
                    color: AppTheme.primaryBlue,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _StatCard(
                    label: 'Score moyen',
                    value: metrics.averageScore.toStringAsFixed(1),
                    color: AppTheme.secondaryGreen,
                    suffix: '/100',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: _StatCard(
                    label: 'Meilleur score',
                    value: metrics.bestScore.toStringAsFixed(1),
                    color: AppTheme.accentOrange,
                    suffix: '/100',
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _StatCard(
                    label: 'Objectif',
                    value: metrics.targetScore.toStringAsFixed(0),
                    color: AppTheme.neutralDarkGray,
                    suffix: '/100',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            _FocusAreasCard(focusAreas: metrics.focusAreas),
          ],
        ),
      ),
    );
  }
}

class _ProgressError extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _ProgressError({
    required this.message,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.warning_amber_rounded,
                size: 48, color: Colors.red),
            const SizedBox(height: 12),
            Text(
              'Impossible de charger les progrès',
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              message,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: const Text('Réessayer'),
            ),
          ],
        ),
      ),
    );
  }
}

class _ReadinessCard extends StatelessWidget {
  final ProgressMetricsEntity metrics;

  const _ReadinessCard({required this.metrics});

  @override
  Widget build(BuildContext context) {
    final readinessPercent = metrics.readinessPercent.clamp(0, 100);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Préparation globale',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${readinessPercent.toStringAsFixed(0)}%',
                        style:
                            Theme.of(context).textTheme.displayMedium?.copyWith(
                                  color: AppTheme.secondaryGreen,
                                ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Niveau de préparation estimé',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          const Icon(Icons.schedule,
                              color: AppTheme.neutralGray, size: 18),
                          const SizedBox(width: 8),
                          Text(
                            'Dernière copie : ${_formatDate(metrics.lastCorrectionAt)}',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(Icons.flag_outlined,
                              color: AppTheme.neutralGray, size: 18),
                          const SizedBox(width: 8),
                          Text(
                            'Objectif : ${metrics.targetScore.toStringAsFixed(0)}/100',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 120,
                  height: 120,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: 120,
                        height: 120,
                        child: CircularProgressIndicator(
                          value: readinessPercent / 100,
                          strokeWidth: 10,
                          backgroundColor: AppTheme.neutralLightGray,
                          valueColor: const AlwaysStoppedAnimation<Color>(
                              AppTheme.secondaryGreen),
                        ),
                      ),
                      Text(
                        '${readinessPercent.toStringAsFixed(0)}%',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ScoreTrendCard extends StatelessWidget {
  final ProgressMetricsEntity metrics;

  const _ScoreTrendCard({required this.metrics});

  @override
  Widget build(BuildContext context) {
    final points = metrics.scoreTrend;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'Évolution des scores',
                    style: Theme.of(context).textTheme.titleLarge,
                    overflow: TextOverflow.ellipsis, // avoids overflow
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: AppTheme.neutralLightGray,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Derniers ${points.length} examens',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 220,
              child: points.isEmpty
                  ? Center(
                      child: Text(
                        'Aucune donnée disponible',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    )
                  : _ScoreTrendChart(points: points),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Dernier score',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  '${points.last.score.toStringAsFixed(1)}/100',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: AppTheme.primaryBlue,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ScoreTrendChart extends StatelessWidget {
  final List<ScoreTrendPoint> points;

  const _ScoreTrendChart({required this.points});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return CustomPaint(
          painter: _ScoreTrendPainter(points: points),
          size: Size(constraints.maxWidth, constraints.maxHeight),
        );
      },
    );
  }
}

class _ScoreTrendPainter extends CustomPainter {
  final List<ScoreTrendPoint> points;

  _ScoreTrendPainter({required this.points});

  @override
  void paint(Canvas canvas, Size size) {
    if (points.isEmpty) return;

    final gridPaint = Paint()
      ..color = AppTheme.neutralLightGray
      ..strokeWidth = 1;

    const gridLines = 4;
    for (var i = 0; i <= gridLines; i++) {
      final dy = size.height / gridLines * i;
      canvas.drawLine(Offset(0, dy), Offset(size.width, dy), gridPaint);
    }

    final minScore = points.map((e) => e.score).reduce((a, b) => a < b ? a : b);
    final maxScore = points.map((e) => e.score).reduce((a, b) => a > b ? a : b);
    final range = (maxScore - minScore).abs() < 1 ? 1 : (maxScore - minScore);
    final horizontalStep =
        points.length == 1 ? 0 : size.width / (points.length - 1);

    final path = Path();
    final firstPoint = points.first;
    final firstY =
        size.height - ((firstPoint.score - minScore) / range * size.height);
    path.moveTo(0, firstY);

    for (var i = 1; i < points.length; i++) {
      final point = points[i];
      final normalizedY =
          size.height - ((point.score - minScore) / range * size.height);
      final dx = horizontalStep * i;
      path.lineTo(dx.toDouble(), normalizedY.toDouble());
    }

    final fillPath = Path.from(path)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    final fillPaint = Paint()
      ..style = PaintingStyle.fill
      ..color = AppTheme.primaryBlue.withOpacity(0.1);
    canvas.drawPath(fillPath, fillPaint);

    final linePaint = Paint()
      ..color = AppTheme.primaryBlue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round;
    canvas.drawPath(path, linePaint);

    final pointPaint = Paint()
      ..color = AppTheme.primaryBlue
      ..style = PaintingStyle.fill;

    for (var i = 0; i < points.length; i++) {
      final point = points[i];
      final dx = horizontalStep * i;
      final dy = size.height - ((point.score - minScore) / range * size.height);
      // canvas.drawCircle(Offset(dx.toDouble(), dy), 4, pointPaint);
      canvas.drawCircle(
        Offset(dx.toDouble(), dy.toDouble()),
        4.0,
        pointPaint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant _ScoreTrendPainter oldDelegate) {
    return oldDelegate.points != points;
  }
}

class _StatCard extends StatelessWidget {
  final String label;
  final String value;
  final Color color;
  final String? suffix;

  const _StatCard({
    required this.label,
    required this.value,
    required this.color,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              value,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: color,
                  ),
            ),
            if (suffix != null)
              Text(
                suffix!,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            const SizedBox(height: 8),
            Text(
              label,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _FocusAreasCard extends StatelessWidget {
  final List<FocusAreaStat> focusAreas;

  const _FocusAreasCard({required this.focusAreas});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Axes prioritaires',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            ...focusAreas.map(
              (area) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            area.area,
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '${area.score.toStringAsFixed(1)}/100',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: _focusStatusColor(area.status).withOpacity(0.15),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        _focusStatusLabel(area.status),
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: _focusStatusColor(area.status),
                            ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      area.delta >= 0
                          ? '+${area.delta.toStringAsFixed(1)}'
                          : area.delta.toStringAsFixed(1),
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: area.delta >= 0
                                ? AppTheme.secondaryGreen
                                : Colors.redAccent,
                            fontWeight: FontWeight.w600,
                          ),
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

Color _focusStatusColor(FocusAreaStatus status) {
  switch (status) {
    case FocusAreaStatus.onTrack:
      return AppTheme.primaryBlue;
    case FocusAreaStatus.improving:
      return AppTheme.secondaryGreen;
    case FocusAreaStatus.needsAttention:
      return AppTheme.accentOrange;
  }
}

String _focusStatusLabel(FocusAreaStatus status) {
  switch (status) {
    case FocusAreaStatus.onTrack:
      return 'Stable';
    case FocusAreaStatus.improving:
      return 'En progrès';
    case FocusAreaStatus.needsAttention:
      return 'À renforcer';
  }
}

String _formatDate(DateTime date) {
  final now = DateTime.now();
  final difference = now.difference(date).inDays;

  if (difference == 0) return 'aujourd\'hui';
  if (difference == 1) return 'hier';
  if (difference < 7) return 'il y a $difference j';

  final day = date.day.toString().padLeft(2, '0');
  final month = date.month.toString().padLeft(2, '0');
  return '$day/$month';
}

class _ChatTab extends StatelessWidget {
  const _ChatTab();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.push('/chat'),
          child: const Text('Ouvrir le chat'),
        ),
      ),
    );
  }
}

class _ProfileTab extends StatelessWidget {
  const _ProfileTab();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil')),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Card(
            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: const Text('Nom de l\'utilisateur'),
              subtitle: const Text('email@example.com'),
            ),
          ),
          const SizedBox(height: 16),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Paramètres'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // TODO: Navigate to settings
            },
          ),
          ListTile(
            leading: const Icon(Icons.help_outline),
            title: const Text('Aide'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // TODO: Navigate to help
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title:
                const Text('Déconnexion', style: TextStyle(color: Colors.red)),
            onTap: () {
              // TODO: Implement logout
              context.go('/login');
            },
          ),
        ],
      ),
    );
  }
}
