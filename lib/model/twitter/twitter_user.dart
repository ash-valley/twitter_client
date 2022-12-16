// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitter_user.freezed.dart';

@freezed
class TwitterUser with _$TwitterUser {
  const factory TwitterUser({
    required int id,
    required String name,
  }) = _TwitterUser;
}
