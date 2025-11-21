import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/entities/progress_entity.dart';

final progressControllerProvider =
    AsyncNotifierProvider<ProgressController, ProgressMetricsEntity>(
  () => ProgressController(),
);

class ProgressController extends AsyncNotifier<ProgressMetricsEntity> {
  @override
  Future<ProgressMetricsEntity> build() async {
    return ProgressMetricsEntity(
      scoreTrend: const [],
      totalCorrections: 0,
      averageScore: 0.0,
      bestScore: 0.0,
      targetScore: 0.0,
      readinessPercent: 0.0,
      lastCorrectionAt: DateTime.now(),
      focusAreas: const [],
    );
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    // simulate data fetch
    await Future.delayed(const Duration(seconds: 1));
    state = AsyncData(await build());
  }
}
