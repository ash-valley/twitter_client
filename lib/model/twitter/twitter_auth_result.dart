// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitter_auth_result.freezed.dart';
part 'twitter_auth_result.g.dart';

@freezed
class TwitterAuthResult with _$TwitterAuthResult {
  const factory TwitterAuthResult({
    required String id,
    required String authToken,
    required String authTokenSecret,
  }) = _TwitterAuthResult;

  factory TwitterAuthResult.fromJson(Map<String, dynamic> json) =>
      _$TwitterAuthResultFromJson(json);
}
