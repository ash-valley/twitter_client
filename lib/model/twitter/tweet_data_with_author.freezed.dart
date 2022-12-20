// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_data_with_author.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TweetDataWithAuthor {
  TweetData get tweetData => throw _privateConstructorUsedError;
  UserData get userData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TweetDataWithAuthorCopyWith<TweetDataWithAuthor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetDataWithAuthorCopyWith<$Res> {
  factory $TweetDataWithAuthorCopyWith(
          TweetDataWithAuthor value, $Res Function(TweetDataWithAuthor) then) =
      _$TweetDataWithAuthorCopyWithImpl<$Res, TweetDataWithAuthor>;
  @useResult
  $Res call({TweetData tweetData, UserData userData});

  $TweetDataCopyWith<$Res> get tweetData;
  $UserDataCopyWith<$Res> get userData;
}

/// @nodoc
class _$TweetDataWithAuthorCopyWithImpl<$Res, $Val extends TweetDataWithAuthor>
    implements $TweetDataWithAuthorCopyWith<$Res> {
  _$TweetDataWithAuthorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tweetData = null,
    Object? userData = null,
  }) {
    return _then(_value.copyWith(
      tweetData: null == tweetData
          ? _value.tweetData
          : tweetData // ignore: cast_nullable_to_non_nullable
              as TweetData,
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TweetDataCopyWith<$Res> get tweetData {
    return $TweetDataCopyWith<$Res>(_value.tweetData, (value) {
      return _then(_value.copyWith(tweetData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res> get userData {
    return $UserDataCopyWith<$Res>(_value.userData, (value) {
      return _then(_value.copyWith(userData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TweetDataWithAuthorCopyWith<$Res>
    implements $TweetDataWithAuthorCopyWith<$Res> {
  factory _$$_TweetDataWithAuthorCopyWith(_$_TweetDataWithAuthor value,
          $Res Function(_$_TweetDataWithAuthor) then) =
      __$$_TweetDataWithAuthorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TweetData tweetData, UserData userData});

  @override
  $TweetDataCopyWith<$Res> get tweetData;
  @override
  $UserDataCopyWith<$Res> get userData;
}

/// @nodoc
class __$$_TweetDataWithAuthorCopyWithImpl<$Res>
    extends _$TweetDataWithAuthorCopyWithImpl<$Res, _$_TweetDataWithAuthor>
    implements _$$_TweetDataWithAuthorCopyWith<$Res> {
  __$$_TweetDataWithAuthorCopyWithImpl(_$_TweetDataWithAuthor _value,
      $Res Function(_$_TweetDataWithAuthor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tweetData = null,
    Object? userData = null,
  }) {
    return _then(_$_TweetDataWithAuthor(
      tweetData: null == tweetData
          ? _value.tweetData
          : tweetData // ignore: cast_nullable_to_non_nullable
              as TweetData,
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
    ));
  }
}

/// @nodoc

class _$_TweetDataWithAuthor
    with DiagnosticableTreeMixin
    implements _TweetDataWithAuthor {
  const _$_TweetDataWithAuthor(
      {required this.tweetData, required this.userData});

  @override
  final TweetData tweetData;
  @override
  final UserData userData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TweetDataWithAuthor(tweetData: $tweetData, userData: $userData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TweetDataWithAuthor'))
      ..add(DiagnosticsProperty('tweetData', tweetData))
      ..add(DiagnosticsProperty('userData', userData));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TweetDataWithAuthor &&
            (identical(other.tweetData, tweetData) ||
                other.tweetData == tweetData) &&
            (identical(other.userData, userData) ||
                other.userData == userData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tweetData, userData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TweetDataWithAuthorCopyWith<_$_TweetDataWithAuthor> get copyWith =>
      __$$_TweetDataWithAuthorCopyWithImpl<_$_TweetDataWithAuthor>(
          this, _$identity);
}

abstract class _TweetDataWithAuthor implements TweetDataWithAuthor {
  const factory _TweetDataWithAuthor(
      {required final TweetData tweetData,
      required final UserData userData}) = _$_TweetDataWithAuthor;

  @override
  TweetData get tweetData;
  @override
  UserData get userData;
  @override
  @JsonKey(ignore: true)
  _$$_TweetDataWithAuthorCopyWith<_$_TweetDataWithAuthor> get copyWith =>
      throw _privateConstructorUsedError;
}
