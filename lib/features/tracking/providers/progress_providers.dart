import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/repositories/progress_repository.dart';
import '../../../domain/entities/progress_entity.dart';

final progressRepositoryProvider = Provider<ProgressRepository>((ref) {
  return ProgressRepository();
});

final progressControllerProvider =
    AutoDisposeAsyncNotifierProvider<ProgressController, ProgressMetricsEntity>(
  ProgressController.new,
);

class ProgressController extends AutoDisposeAsyncNotifier<ProgressMetricsEntity> {
  late final ProgressRepository _repository;

  @override
  Future<ProgressMetricsEntity> build() async {
    _repository = ref.watch(progressRepositoryProvider);
    return _loadMetrics();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _loadMetrics());
  }

  Future<ProgressMetricsEntity> _loadMetrics() {
    // TODO: Inject authenticated user ID when auth flow is ready.
    const demoUserId = 'demo_user';
    return _repository.fetchProgressMetrics(userId: demoUserId);
  }
}


