// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitter_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String $twitterApiHash() => r'ccffda1e8f3826fc93599b72d603bf237d283d92';

/// See also [twitterApi].
final twitterApiProvider = FutureProvider<TwitterApiWrapper>(
  twitterApi,
  name: r'twitterApiProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $twitterApiHash,
);
typedef TwitterApiRef = FutureProviderRef<TwitterApiWrapper>;
String $twitterUserHash() => r'9a9b566cc0fdb67fc2f493b6d99a6960640316ec';

/// See also [twitterUser].
class TwitterUserProvider extends AutoDisposeFutureProvider<UserData> {
  TwitterUserProvider(
    this.userId,
  ) : super(
          (ref) => twitterUser(
            ref,
            userId,
          ),
          from: twitterUserProvider,
          name: r'twitterUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $twitterUserHash,
        );

  final String userId;

  @override
  bool operator ==(Object other) {
    return other is TwitterUserProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef TwitterUserRef = AutoDisposeFutureProviderRef<UserData>;

/// See also [twitterUser].
final twitterUserProvider = TwitterUserFamily();

class TwitterUserFamily extends Family<AsyncValue<UserData>> {
  TwitterUserFamily();

  TwitterUserProvider call(
    String userId,
  ) {
    return TwitterUserProvider(
      userId,
    );
  }

  @override
  AutoDisposeFutureProvider<UserData> getProviderOverride(
    covariant TwitterUserProvider provider,
  ) {
    return call(
      provider.userId,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'twitterUserProvider';
}

String $timelineHash() => r'28ddfd559db48b22b8392522a05e4c24f2382268';

/// See also [timeline].
class TimelineProvider extends AutoDisposeFutureProvider<
    TwitterResponse<List<TweetData>, TweetMeta>> {
  TimelineProvider(
    this.nextToken,
  ) : super(
          (ref) => timeline(
            ref,
            nextToken,
          ),
          from: timelineProvider,
          name: r'timelineProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $timelineHash,
        );

  final String? nextToken;

  @override
  bool operator ==(Object other) {
    return other is TimelineProvider && other.nextToken == nextToken;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, nextToken.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef TimelineRef
    = AutoDisposeFutureProviderRef<TwitterResponse<List<TweetData>, TweetMeta>>;

/// See also [timeline].
final timelineProvider = TimelineFamily();

class TimelineFamily
    extends Family<AsyncValue<TwitterResponse<List<TweetData>, TweetMeta>>> {
  TimelineFamily();

  TimelineProvider call(
    String? nextToken,
  ) {
    return TimelineProvider(
      nextToken,
    );
  }

  @override
  AutoDisposeFutureProvider<TwitterResponse<List<TweetData>, TweetMeta>>
      getProviderOverride(
    covariant TimelineProvider provider,
  ) {
    return call(
      provider.nextToken,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'timelineProvider';
}
