import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:twitter_client/model/twitter/twitter_auth_result.dart';

part 'secure_storage.g.dart';

@riverpod
SecureStorage secureStorage(SecureStorageRef ref) {
  return const SecureStorage(storage: FlutterSecureStorage());
}

class SecureStorage {
  const SecureStorage({required this.storage});

  final FlutterSecureStorage storage;
  final _twitterAuthStorageKey = 'twitter-auth-storage-key';

  Future<void> setTwitterAuth(TwitterAuthResult authResult) async {
    final str = json.encode(authResult.toJson());
    await storage.write(key: _twitterAuthStorageKey, value: str);
  }

  Future<TwitterAuthResult?> getTwitterAuth() async {
    final twitterAuth = await storage.read(key: _twitterAuthStorageKey);
    if (twitterAuth == null) {
      return null;
    }
    final twitterAuthJson = json.decode(twitterAuth);
    return TwitterAuthResult.fromJson(twitterAuthJson);
  }

  Future<void> deleteTwitterAuth() async {
    await storage.delete(key: _twitterAuthStorageKey);
  }
}
