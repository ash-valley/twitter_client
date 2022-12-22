// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitter_client/repository/twitter_api.dart';

import 'tweet_state.dart';

part 'timeline_state.freezed.dart';

@freezed
class TimelineState with _$TimelineState {
  const TimelineState._();
  const factory TimelineState({
    required List<TweetState> tweets,
    String? newestId,
    String? oldestId,
    String? nextToken,
    String? previousToken,
  }) = _TimelineState;

  factory TimelineState.fromResponse(TimelineResponse response) =>
      TimelineState(
        tweets: response.data
            .map((e) => TweetState(
                  id: e.id,
                  text: e.text,
                  authorId: e.authorId ?? '',
                ))
            .toList(),
        newestId: response.meta?.newestId,
        oldestId: response.meta?.oldestId,
        nextToken: response.meta?.nextToken,
        previousToken: response.meta?.previousToken,
      );

  bool get hasNext => nextToken != null;

  TimelineState addNextTimeline(TimelineResponse response) => TimelineState(
        tweets: [
          ...tweets,
          ...response.data
              .map((e) => TweetState(
                    id: e.id,
                    text: e.text,
                    authorId: e.authorId ?? '',
                  ))
              .toList(),
        ],
        newestId: response.meta?.newestId,
        oldestId: oldestId,
        nextToken: response.meta?.nextToken,
        previousToken: response.meta?.previousToken,
      );
}
