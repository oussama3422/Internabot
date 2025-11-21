import 'package:equatable/equatable.dart';

class ProgressMetricsEntity extends Equatable {
  final List<ScoreTrendPoint> scoreTrend;
  final int totalCorrections;
  final double averageScore;
  final double bestScore;
  final double targetScore;
  final double readinessPercent;
  final DateTime lastCorrectionAt;
  final List<FocusAreaStat> focusAreas;

  const ProgressMetricsEntity({
    required this.scoreTrend,
    required this.totalCorrections,
    required this.averageScore,
    required this.bestScore,
    required this.targetScore,
    required this.readinessPercent,
    required this.lastCorrectionAt,
    required this.focusAreas,
  });

  @override
  List<Object?> get props => [
        scoreTrend,
        totalCorrections,
        averageScore,
        bestScore,
        targetScore,
        readinessPercent,
        lastCorrectionAt,
        focusAreas,
      ];
}

class ScoreTrendPoint extends Equatable {
  final DateTime date;
  final double score;

  const ScoreTrendPoint({
    required this.date,
    required this.score,
  });

  @override
  List<Object?> get props => [date, score];
}

class FocusAreaStat extends Equatable {
  final String area;
  final double score;
  final double delta;
  final FocusAreaStatus status;

  const FocusAreaStat({
    required this.area,
    required this.score,
    required this.delta,
    required this.status,
  });

  @override
  List<Object?> get props => [area, score, delta, status];
}

enum FocusAreaStatus {
  onTrack,
  needsAttention,
  improving,
}


