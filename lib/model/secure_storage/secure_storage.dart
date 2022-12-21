// ignore: unused_import
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitter_client/model/twitter/twitter_auth_result.dart';

part 'secure_storage.freezed.dart';
part 'secure_storage.g.dart';

enum SecureStorageKey {
  twitterAuth,
}

@Freezed(unionKey: 'key')
class SecureStorage with _$SecureStorage {
  const factory SecureStorage.twitterAuth({
    @Default(SecureStorageKey.twitterAuth) SecureStorageKey? key,
    required TwitterAuthResult value,
  }) = TwitterAuthResultSecureStorage;

  factory SecureStorage.fromJson(Map<String, dynamic> json) =>
      _$SecureStorageFromJson(json);
}
