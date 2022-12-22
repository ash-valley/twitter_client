// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitter_api_v2/twitter_api_v2.dart';

part 'tweet_state.freezed.dart';

@freezed
class TweetState with _$TweetState {
  const factory TweetState({
    required String id,
    required String text,
    required String authorId,
    TweetEntities? entities,
  }) = _TweetState;
}
