// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitter_auth_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TwitterAuthResult _$$_TwitterAuthResultFromJson(Map<String, dynamic> json) =>
    _$_TwitterAuthResult(
      id: json['id'] as String,
      authToken: json['authToken'] as String,
      authTokenSecret: json['authTokenSecret'] as String,
    );

Map<String, dynamic> _$$_TwitterAuthResultToJson(
        _$_TwitterAuthResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'authToken': instance.authToken,
      'authTokenSecret': instance.authTokenSecret,
    };
