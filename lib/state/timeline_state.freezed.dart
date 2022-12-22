// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimelineState {
  List<TweetState> get tweets => throw _privateConstructorUsedError;
  String? get newestId => throw _privateConstructorUsedError;
  String? get oldestId => throw _privateConstructorUsedError;
  String? get nextToken => throw _privateConstructorUsedError;
  String? get previousToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimelineStateCopyWith<TimelineState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineStateCopyWith<$Res> {
  factory $TimelineStateCopyWith(
          TimelineState value, $Res Function(TimelineState) then) =
      _$TimelineStateCopyWithImpl<$Res, TimelineState>;
  @useResult
  $Res call(
      {List<TweetState> tweets,
      String? newestId,
      String? oldestId,
      String? nextToken,
      String? previousToken});
}

/// @nodoc
class _$TimelineStateCopyWithImpl<$Res, $Val extends TimelineState>
    implements $TimelineStateCopyWith<$Res> {
  _$TimelineStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tweets = null,
    Object? newestId = freezed,
    Object? oldestId = freezed,
    Object? nextToken = freezed,
    Object? previousToken = freezed,
  }) {
    return _then(_value.copyWith(
      tweets: null == tweets
          ? _value.tweets
          : tweets // ignore: cast_nullable_to_non_nullable
              as List<TweetState>,
      newestId: freezed == newestId
          ? _value.newestId
          : newestId // ignore: cast_nullable_to_non_nullable
              as String?,
      oldestId: freezed == oldestId
          ? _value.oldestId
          : oldestId // ignore: cast_nullable_to_non_nullable
              as String?,
      nextToken: freezed == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String?,
      previousToken: freezed == previousToken
          ? _value.previousToken
          : previousToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimelineStateCopyWith<$Res>
    implements $TimelineStateCopyWith<$Res> {
  factory _$$_TimelineStateCopyWith(
          _$_TimelineState value, $Res Function(_$_TimelineState) then) =
      __$$_TimelineStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TweetState> tweets,
      String? newestId,
      String? oldestId,
      String? nextToken,
      String? previousToken});
}

/// @nodoc
class __$$_TimelineStateCopyWithImpl<$Res>
    extends _$TimelineStateCopyWithImpl<$Res, _$_TimelineState>
    implements _$$_TimelineStateCopyWith<$Res> {
  __$$_TimelineStateCopyWithImpl(
      _$_TimelineState _value, $Res Function(_$_TimelineState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tweets = null,
    Object? newestId = freezed,
    Object? oldestId = freezed,
    Object? nextToken = freezed,
    Object? previousToken = freezed,
  }) {
    return _then(_$_TimelineState(
      tweets: null == tweets
          ? _value._tweets
          : tweets // ignore: cast_nullable_to_non_nullable
              as List<TweetState>,
      newestId: freezed == newestId
          ? _value.newestId
          : newestId // ignore: cast_nullable_to_non_nullable
              as String?,
      oldestId: freezed == oldestId
          ? _value.oldestId
          : oldestId // ignore: cast_nullable_to_non_nullable
              as String?,
      nextToken: freezed == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String?,
      previousToken: freezed == previousToken
          ? _value.previousToken
          : previousToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TimelineState extends _TimelineState with DiagnosticableTreeMixin {
  const _$_TimelineState(
      {required final List<TweetState> tweets,
      this.newestId,
      this.oldestId,
      this.nextToken,
      this.previousToken})
      : _tweets = tweets,
        super._();

  final List<TweetState> _tweets;
  @override
  List<TweetState> get tweets {
    if (_tweets is EqualUnmodifiableListView) return _tweets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tweets);
  }

  @override
  final String? newestId;
  @override
  final String? oldestId;
  @override
  final String? nextToken;
  @override
  final String? previousToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimelineState(tweets: $tweets, newestId: $newestId, oldestId: $oldestId, nextToken: $nextToken, previousToken: $previousToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimelineState'))
      ..add(DiagnosticsProperty('tweets', tweets))
      ..add(DiagnosticsProperty('newestId', newestId))
      ..add(DiagnosticsProperty('oldestId', oldestId))
      ..add(DiagnosticsProperty('nextToken', nextToken))
      ..add(DiagnosticsProperty('previousToken', previousToken));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimelineState &&
            const DeepCollectionEquality().equals(other._tweets, _tweets) &&
            (identical(other.newestId, newestId) ||
                other.newestId == newestId) &&
            (identical(other.oldestId, oldestId) ||
                other.oldestId == oldestId) &&
            (identical(other.nextToken, nextToken) ||
                other.nextToken == nextToken) &&
            (identical(other.previousToken, previousToken) ||
                other.previousToken == previousToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tweets),
      newestId,
      oldestId,
      nextToken,
      previousToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimelineStateCopyWith<_$_TimelineState> get copyWith =>
      __$$_TimelineStateCopyWithImpl<_$_TimelineState>(this, _$identity);
}

abstract class _TimelineState extends TimelineState {
  const factory _TimelineState(
      {required final List<TweetState> tweets,
      final String? newestId,
      final String? oldestId,
      final String? nextToken,
      final String? previousToken}) = _$_TimelineState;
  const _TimelineState._() : super._();

  @override
  List<TweetState> get tweets;
  @override
  String? get newestId;
  @override
  String? get oldestId;
  @override
  String? get nextToken;
  @override
  String? get previousToken;
  @override
  @JsonKey(ignore: true)
  _$$_TimelineStateCopyWith<_$_TimelineState> get copyWith =>
      throw _privateConstructorUsedError;
}
