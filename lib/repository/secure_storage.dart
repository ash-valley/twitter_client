import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:twitter_client/model/secure_storage/secure_storage.dart';

part 'secure_storage.g.dart';

@Riverpod(keepAlive: true)
FlutterSecureStorage flutterSecureStorage(FlutterSecureStorageRef ref) {
  return const FlutterSecureStorage();
}

@riverpod
FutureOr<void> writeSecureStorage(
  WriteSecureStorageRef ref,
  SecureStorage secureStorage,
) =>
    ref.watch(flutterSecureStorageProvider).write(
          key: secureStorage.key!.name,
          value: json.encode(secureStorage.toJson()),
        );

@Riverpod(keepAlive: true)
Future<SecureStorage?> readSecureStorage(
  ReadSecureStorageRef ref,
  SecureStorageKey key,
) async {
  final value =
      await ref.watch(flutterSecureStorageProvider).read(key: key.name);
  if (value == null) {
    return null;
  }
  return SecureStorage.fromJson(json.decode(value));
}

@riverpod
FutureOr<void> deleteSecureStorage(
  DeleteSecureStorageRef ref,
  SecureStorageKey key,
) =>
    ref.watch(flutterSecureStorageProvider).delete(key: key.name);
