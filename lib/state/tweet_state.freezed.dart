// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TweetState {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  TweetEntities? get entities => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TweetStateCopyWith<TweetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetStateCopyWith<$Res> {
  factory $TweetStateCopyWith(
          TweetState value, $Res Function(TweetState) then) =
      _$TweetStateCopyWithImpl<$Res, TweetState>;
  @useResult
  $Res call({String id, String text, String authorId, TweetEntities? entities});

  $TweetEntitiesCopyWith<$Res>? get entities;
}

/// @nodoc
class _$TweetStateCopyWithImpl<$Res, $Val extends TweetState>
    implements $TweetStateCopyWith<$Res> {
  _$TweetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? authorId = null,
    Object? entities = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      entities: freezed == entities
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as TweetEntities?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TweetEntitiesCopyWith<$Res>? get entities {
    if (_value.entities == null) {
      return null;
    }

    return $TweetEntitiesCopyWith<$Res>(_value.entities!, (value) {
      return _then(_value.copyWith(entities: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TweetStateCopyWith<$Res>
    implements $TweetStateCopyWith<$Res> {
  factory _$$_TweetStateCopyWith(
          _$_TweetState value, $Res Function(_$_TweetState) then) =
      __$$_TweetStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String text, String authorId, TweetEntities? entities});

  @override
  $TweetEntitiesCopyWith<$Res>? get entities;
}

/// @nodoc
class __$$_TweetStateCopyWithImpl<$Res>
    extends _$TweetStateCopyWithImpl<$Res, _$_TweetState>
    implements _$$_TweetStateCopyWith<$Res> {
  __$$_TweetStateCopyWithImpl(
      _$_TweetState _value, $Res Function(_$_TweetState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? authorId = null,
    Object? entities = freezed,
  }) {
    return _then(_$_TweetState(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      entities: freezed == entities
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as TweetEntities?,
    ));
  }
}

/// @nodoc

class _$_TweetState with DiagnosticableTreeMixin implements _TweetState {
  const _$_TweetState(
      {required this.id,
      required this.text,
      required this.authorId,
      this.entities});

  @override
  final String id;
  @override
  final String text;
  @override
  final String authorId;
  @override
  final TweetEntities? entities;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TweetState(id: $id, text: $text, authorId: $authorId, entities: $entities)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TweetState'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('authorId', authorId))
      ..add(DiagnosticsProperty('entities', entities));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TweetState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.entities, entities) ||
                other.entities == entities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, text, authorId, entities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TweetStateCopyWith<_$_TweetState> get copyWith =>
      __$$_TweetStateCopyWithImpl<_$_TweetState>(this, _$identity);
}

abstract class _TweetState implements TweetState {
  const factory _TweetState(
      {required final String id,
      required final String text,
      required final String authorId,
      final TweetEntities? entities}) = _$_TweetState;

  @override
  String get id;
  @override
  String get text;
  @override
  String get authorId;
  @override
  TweetEntities? get entities;
  @override
  @JsonKey(ignore: true)
  _$$_TweetStateCopyWith<_$_TweetState> get copyWith =>
      throw _privateConstructorUsedError;
}
