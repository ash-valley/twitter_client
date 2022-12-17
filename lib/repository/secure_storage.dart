import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'secure_storage.g.dart';

const TWITTER_AUTH_STORAGE_KEY = 'twitter-auth-storage-key';

@riverpod
FlutterSecureStorage secureStorage(SecureStorageRef ref) {
  return const FlutterSecureStorage();
}
