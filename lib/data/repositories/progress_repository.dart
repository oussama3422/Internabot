import 'dart:math';

import '../../domain/entities/progress_entity.dart';

class ProgressRepository {
  Future<ProgressMetricsEntity> fetchProgressMetrics({
    required String userId,
  }) async {
    // TODO: Replace with Firebase/Cloud Functions integration.
    await Future.delayed(const Duration(milliseconds: 600));

    final now = DateTime.now();
    final random = Random(userId.hashCode);

    final scoreTrend = List.generate(8, (index) {
      final weeksAgo = 7 - index;
      final baseScore = 65 + random.nextInt(25);
      return ScoreTrendPoint(
        date: now.subtract(Duration(days: weeksAgo * 3)),
        score: baseScore.toDouble(),
      );
    }).toList()
      ..sort((a, b) => a.date.compareTo(b.date));

    final focusAreas = [
      FocusAreaStat(
        area: 'Cardiologie',
        score: 72,
        delta: -4.5,
        status: FocusAreaStatus.needsAttention,
      ),
      FocusAreaStat(
        area: 'Pédiatrie',
        score: 81,
        delta: 2.3,
        status: FocusAreaStatus.improving,
      ),
      FocusAreaStat(
        area: 'Chirurgie',
        score: 76,
        delta: 1.2,
        status: FocusAreaStatus.onTrack,
      ),
      FocusAreaStat(
        area: 'Gynécologie',
        score: 68,
        delta: -1.8,
        status: FocusAreaStatus.needsAttention,
      ),
    ];

    final averageScore = scoreTrend.map((e) => e.score).reduce((a, b) => a + b) / scoreTrend.length;
    final bestScore = scoreTrend.map((e) => e.score).reduce(max);

    return ProgressMetricsEntity(
      scoreTrend: scoreTrend,
      totalCorrections: random.nextInt(6) + 8,
      averageScore: double.parse(averageScore.toStringAsFixed(1)),
      bestScore: bestScore,
      targetScore: 85,
      readinessPercent: min(95, averageScore + random.nextInt(10)).toDouble(),
      lastCorrectionAt: now.subtract(Duration(days: random.nextInt(5) + 1)),
      focusAreas: focusAreas,
    );
  }
}


