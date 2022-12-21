// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secure_storage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TwitterAuthResultSecureStorage _$$TwitterAuthResultSecureStorageFromJson(
        Map<String, dynamic> json) =>
    _$TwitterAuthResultSecureStorage(
      key: $enumDecodeNullable(_$SecureStorageKeyEnumMap, json['key']) ??
          SecureStorageKey.twitterAuth,
      value: TwitterAuthResult.fromJson(json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TwitterAuthResultSecureStorageToJson(
        _$TwitterAuthResultSecureStorage instance) =>
    <String, dynamic>{
      'key': _$SecureStorageKeyEnumMap[instance.key],
      'value': instance.value,
    };

const _$SecureStorageKeyEnumMap = {
  SecureStorageKey.twitterAuth: 'twitterAuth',
};
