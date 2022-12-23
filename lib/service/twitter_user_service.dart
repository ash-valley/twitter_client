import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_api_v2/twitter_api_v2.dart';
import 'package:twitter_client/repository/twitter_api.dart';
import 'package:twitter_client/service/time_line_service.dart';

final twitterUserProvider = StateNotifierProvider.autoDispose<
    TwitterUserNotifier, AsyncValue<List<UserData>>>((ref) {
  final authorIds = ref.watch(timelineStateProvider).value?.authorIds;
  final users = ref.watch(twitterApiUserProvider(authorIds!));
  return TwitterUserNotifier(users);
});

class TwitterUserNotifier extends StateNotifier<AsyncValue<List<UserData>>> {
  TwitterUserNotifier(super.state);

  UserData? getById(String userId) {
    try {
      return state.requireValue.firstWhere((e) => e.id == userId);
    } catch (e) {
      return null;
    }
  }
}
