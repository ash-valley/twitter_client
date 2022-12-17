import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_api_v2/twitter_api_v2.dart';
import 'package:twitter_client/model/twitter/twitter_auth_result.dart';
import 'package:twitter_client/repository/secure_storage.dart';
import 'package:twitter_client/repository/twitter_login.dart';

final timelineProvider = FutureProvider<List<TweetData>>((ref) async {
  TwitterAuthResult? authState = ref.read(authStateProvider);
  if (authState == null) {
    final auth = await ref
        .read(secureStorageProvider)
        .read(key: TWITTER_AUTH_STORAGE_KEY);
    if (auth == null) {
      return [];
    }
    authState = TwitterAuthResult.fromJson(json.decode(auth));
  }
  return TwitterApiWrapper(authResult: authState).getTimeLine();
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

  Future<bool> checkLogin() async {
    try {
      await _client.users.lookupMe();
      return true;
    } catch (e) {
      return false;
    }
  }
}
