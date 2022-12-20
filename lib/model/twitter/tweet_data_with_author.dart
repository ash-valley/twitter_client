// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitter_api_v2/twitter_api_v2.dart';

part 'tweet_data_with_author.freezed.dart';

@freezed
class TweetDataWithAuthor with _$TweetDataWithAuthor {
  const factory TweetDataWithAuthor({
    required TweetData tweetData,
    required UserData userData,
  }) = _TweetDataWithAuthor;
}
