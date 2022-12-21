// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'secure_storage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SecureStorage _$SecureStorageFromJson(Map<String, dynamic> json) {
  return TwitterAuthResultSecureStorage.fromJson(json);
}

/// @nodoc
mixin _$SecureStorage {
  SecureStorageKey? get key => throw _privateConstructorUsedError;
  TwitterAuthResult get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SecureStorageKey? key, TwitterAuthResult value)
        twitterAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SecureStorageKey? key, TwitterAuthResult value)?
        twitterAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SecureStorageKey? key, TwitterAuthResult value)?
        twitterAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TwitterAuthResultSecureStorage value) twitterAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TwitterAuthResultSecureStorage value)? twitterAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TwitterAuthResultSecureStorage value)? twitterAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SecureStorageCopyWith<SecureStorage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecureStorageCopyWith<$Res> {
  factory $SecureStorageCopyWith(
          SecureStorage value, $Res Function(SecureStorage) then) =
      _$SecureStorageCopyWithImpl<$Res, SecureStorage>;
  @useResult
  $Res call({SecureStorageKey? key, TwitterAuthResult value});

  $TwitterAuthResultCopyWith<$Res> get value;
}

/// @nodoc
class _$SecureStorageCopyWithImpl<$Res, $Val extends SecureStorage>
    implements $SecureStorageCopyWith<$Res> {
  _$SecureStorageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as SecureStorageKey?,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as TwitterAuthResult,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TwitterAuthResultCopyWith<$Res> get value {
    return $TwitterAuthResultCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TwitterAuthResultSecureStorageCopyWith<$Res>
    implements $SecureStorageCopyWith<$Res> {
  factory _$$TwitterAuthResultSecureStorageCopyWith(
          _$TwitterAuthResultSecureStorage value,
          $Res Function(_$TwitterAuthResultSecureStorage) then) =
      __$$TwitterAuthResultSecureStorageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SecureStorageKey? key, TwitterAuthResult value});

  @override
  $TwitterAuthResultCopyWith<$Res> get value;
}

/// @nodoc
class __$$TwitterAuthResultSecureStorageCopyWithImpl<$Res>
    extends _$SecureStorageCopyWithImpl<$Res, _$TwitterAuthResultSecureStorage>
    implements _$$TwitterAuthResultSecureStorageCopyWith<$Res> {
  __$$TwitterAuthResultSecureStorageCopyWithImpl(
      _$TwitterAuthResultSecureStorage _value,
      $Res Function(_$TwitterAuthResultSecureStorage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? value = null,
  }) {
    return _then(_$TwitterAuthResultSecureStorage(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as SecureStorageKey?,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as TwitterAuthResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TwitterAuthResultSecureStorage
    with DiagnosticableTreeMixin
    implements TwitterAuthResultSecureStorage {
  const _$TwitterAuthResultSecureStorage(
      {this.key = SecureStorageKey.twitterAuth, required this.value});

  factory _$TwitterAuthResultSecureStorage.fromJson(
          Map<String, dynamic> json) =>
      _$$TwitterAuthResultSecureStorageFromJson(json);

  @override
  @JsonKey()
  final SecureStorageKey? key;
  @override
  final TwitterAuthResult value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SecureStorage.twitterAuth(key: $key, value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SecureStorage.twitterAuth'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitterAuthResultSecureStorage &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitterAuthResultSecureStorageCopyWith<_$TwitterAuthResultSecureStorage>
      get copyWith => __$$TwitterAuthResultSecureStorageCopyWithImpl<
          _$TwitterAuthResultSecureStorage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SecureStorageKey? key, TwitterAuthResult value)
        twitterAuth,
  }) {
    return twitterAuth(key, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SecureStorageKey? key, TwitterAuthResult value)?
        twitterAuth,
  }) {
    return twitterAuth?.call(key, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SecureStorageKey? key, TwitterAuthResult value)?
        twitterAuth,
    required TResult orElse(),
  }) {
    if (twitterAuth != null) {
      return twitterAuth(key, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TwitterAuthResultSecureStorage value) twitterAuth,
  }) {
    return twitterAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TwitterAuthResultSecureStorage value)? twitterAuth,
  }) {
    return twitterAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TwitterAuthResultSecureStorage value)? twitterAuth,
    required TResult orElse(),
  }) {
    if (twitterAuth != null) {
      return twitterAuth(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TwitterAuthResultSecureStorageToJson(
      this,
    );
  }
}

abstract class TwitterAuthResultSecureStorage implements SecureStorage {
  const factory TwitterAuthResultSecureStorage(
          {final SecureStorageKey? key,
          required final TwitterAuthResult value}) =
      _$TwitterAuthResultSecureStorage;

  factory TwitterAuthResultSecureStorage.fromJson(Map<String, dynamic> json) =
      _$TwitterAuthResultSecureStorage.fromJson;

  @override
  SecureStorageKey? get key;
  @override
  TwitterAuthResult get value;
  @override
  @JsonKey(ignore: true)
  _$$TwitterAuthResultSecureStorageCopyWith<_$TwitterAuthResultSecureStorage>
      get copyWith => throw _privateConstructorUsedError;
}
