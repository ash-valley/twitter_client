import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_client/repository/twitter_api.dart';
import 'package:twitter_client/state/timeline_state.dart';

final timelineStateProvider = StateNotifierProvider.autoDispose<TimelineService,
    AsyncValue<TimelineState>>((ref) {
  final timeline = ref.watch(twitterApiTimelineProvider(null));
  return TimelineService(
    timeline.when(
      data: ((data) => AsyncData(TimelineState.fromResponse(data))),
      error: ((error, stackTrace) => AsyncError(error, stackTrace)),
      loading: () => const AsyncLoading(),
    ),
    ref,
  );
});

class TimelineService extends StateNotifier<AsyncValue<TimelineState>> {
  TimelineService(
    super.state,
    this.ref,
  );

  final Ref ref;

  Future<void> refresh() =>
      ref.refresh(twitterApiTimelineProvider(null).future);

  Future<void> loadItemsIfNeeded() async {
    if (state.isLoading || state.value?.nextToken == null) {
      return;
    }
    state = const AsyncLoading<TimelineState>().copyWithPrevious(state);
    final nextTimeline = await ref
        .read(twitterApiTimelineProvider(state.value!.nextToken).future);
    state = AsyncValue.data(state.requireValue.addNextTimeline(nextTimeline));
  }
}
