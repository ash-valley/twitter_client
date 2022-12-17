import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:twitter_client/exception/twitter_auth_exception.dart';
import 'package:twitter_client/model/twitter/twitter_auth_result.dart';
import 'package:twitter_login/twitter_login.dart';

part 'twitter_login.g.dart';

// ignore: non_constant_identifier_names
final TWITTER_API_KEY = dotenv.get('TWITTER_API_KEY');
// ignore: non_constant_identifier_names
final TWITTER_API_SECRET_KEY = dotenv.get('TWITTER_API_SECRET_KEY');

final authStateProvider = StateProvider<TwitterAuthResult?>((ref) {
  return;
});

@riverpod
TwitterLoginWrapper twitterLogin(TwitterLoginRef ref) {
  return TwitterLoginWrapper(
    apiKey: TWITTER_API_KEY,
    apiSecretKey: TWITTER_API_SECRET_KEY,
    redirectURI: dotenv.get('REDIRECT_URI'),
  );
}

class TwitterLoginWrapper {
  TwitterLoginWrapper({
    required this.apiKey,
    required this.apiSecretKey,
    required this.redirectURI,
  }) : _twitterLogin = TwitterLogin(
          apiKey: apiKey,
          apiSecretKey: apiSecretKey,
          redirectURI: redirectURI,
        );

  final String apiKey;
  final String apiSecretKey;
  final String redirectURI;
  final TwitterLogin _twitterLogin;

  Future<TwitterAuthResult?> login() async {
    final authResult = await _twitterLogin.loginV2();
    switch (authResult.status) {
      case TwitterLoginStatus.loggedIn:
        final user = authResult.user!;
        return TwitterAuthResult(
          id: user.id.toString(),
          authToken: authResult.authToken!,
          authTokenSecret: authResult.authTokenSecret!,
        );
      case TwitterLoginStatus.cancelledByUser:
        return null;
      case TwitterLoginStatus.error:
      default:
        throw TwitterAuthException(authResult.errorMessage!);
    }
  }
}
