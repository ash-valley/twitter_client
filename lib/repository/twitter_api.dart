import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:twitter_api_v2/twitter_api_v2.dart';
import 'package:twitter_client/model/secure_storage/secure_storage.dart';
import 'package:twitter_client/model/twitter/twitter_auth_result.dart';
import 'package:twitter_client/repository/secure_storage.dart';
import 'package:twitter_client/repository/twitter_login.dart';

part 'twitter_api.g.dart';

@Riverpod(keepAlive: true)
FutureOr<TwitterApiWrapper> twitterApi(TwitterApiRef ref) async {
  final secureStorage = await ref
      .watch(readSecureStorageProvider(SecureStorageKey.twitterAuth).future);
  if (secureStorage?.mapOrNull(twitterAuth: (e) => e.value) == null) {
    return throw UnauthorizedException('not auth');
  }
  return TwitterApiWrapper(authResult: secureStorage!.value);
}

@riverpod
FutureOr<List<UserData>> twitterApiUser(
  TwitterApiUserRef ref,
  List<String> userIds,
) async {
  final twitterApi = await ref.watch(twitterApiProvider.future);
  return await twitterApi.getUsers(userIds);
}

typedef TimelineResponse = TwitterResponse<List<TweetData>, TweetMeta>;
@riverpod
FutureOr<TimelineResponse> twitterApiTimeline(
  TwitterApiTimelineRef ref,
  String? nextToken,
) async {
  final twitterApi = await ref.watch(twitterApiProvider.future);
  return await twitterApi.getTimeLine(nextToken);
}

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

  Future<TimelineResponse> getTimeLine(String? paginationToken) async {
    final timeline = await _client.tweets.lookupHomeTimeline(
      userId: authResult.id,
      tweetFields: [
        TweetField.authorId,
        TweetField.entities,
      ],
      paginationToken: paginationToken,
    );
    return timeline;
  }

  Future<List<UserData>> getUsers(List<String> id) async {
    final userData = await _client.users.lookupByIds(
      userIds: id,
      userFields: [
        UserField.name,
        UserField.profileImageUrl,
      ],
    );
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
