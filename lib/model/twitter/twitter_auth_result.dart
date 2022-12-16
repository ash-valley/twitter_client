// ignore: unused_import
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitter_client/model/twitter/twitter_user.dart';

part 'twitter_auth_result.freezed.dart';

@freezed
class TwitterAuthResult with _$TwitterAuthResult {
  const factory TwitterAuthResult({
    required String authToken,
    required String authTokenSecret,
    required TwitterUser user,
  }) = _TwitterAuthResult;
}
