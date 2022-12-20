import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_api_v2/twitter_api_v2.dart';
import 'package:twitter_client/model/twitter/tweet_data_with_author.dart';
import 'package:twitter_client/model/twitter/twitter_auth_result.dart';
import 'package:twitter_client/repository/secure_storage.dart';
import 'package:twitter_client/repository/twitter_login.dart';

final timelineProvider = FutureProvider<List<TweetDataWithAuthor>>((ref) async {
  TwitterAuthResult? authState = ref.read(authStateProvider);
  if (authState == null) {
    authState = await ref.read(secureStorageProvider).getTwitterAuth();
    if (authState == null) {
      return [];
    }
  }
  final twitterApi = TwitterApiWrapper(authResult: authState);
  final timeLine = await twitterApi.getTimeLine();
  final userIds = timeLine
      .map((e) => e.authorId)
      .where((e) => e != null)
      .whereType<String>()
      .toSet()
      .toList();
  final users = await twitterApi.getUsers(userIds);
  return timeLine
      .map(
        (e) => TweetDataWithAuthor(
          tweetData: e,
          userData: users.firstWhere(
            (u) => e.authorId == u.id,
            orElse: () =>
                const UserData(id: 'id', name: 'name', username: 'username'),
          ),
        ),
      )
      .toList();
});

class TwitterApiWrapper {
  TwitterApiWrapper({
    required this.authResult,
  }) : _client = TwitterApi(
          bearerToken: '',
          oauthTokens: OAuthTokens(
            accessToken: authResult.authToken,
            accessTokenSecret: authResult.authTokenSecret,
            consumerKey: TWITTER_API_KEY,
            consumerSecret: TWITTER_API_SECRET_KEY,
          ),
        );

  final TwitterAuthResult authResult;
  final TwitterApi _client;

  Future<List<TweetData>> getTimeLine() async {
    final timeline = await _client.tweets
        .lookupHomeTimeline(userId: authResult.id, tweetFields: [
      TweetField.authorId,
      TweetField.entities,
    ]);
    return timeline.data;
  }

  Future<List<UserData>> getUsers(List<String> ids) async {
    final userData = await _client.users.lookupByIds(userIds: ids, userFields: [
      UserField.name,
      UserField.profileImageUrl,
    ]);
    return userData.data;
  }

  Future<bool> checkLogin() async {
    try {
      await _client.users.lookupMe();
      return true;
    } catch (e) {
      return false;
    }
  }
}
