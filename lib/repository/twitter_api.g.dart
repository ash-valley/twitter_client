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
String $twitterApiUserHash() => r'e0ae02bbbe9d67025bd247fbf084c3d1c020d431';

/// See also [twitterApiUser].
class TwitterApiUserProvider extends AutoDisposeFutureProvider<List<UserData>> {
  TwitterApiUserProvider(
    this.userIds,
  ) : super(
          (ref) => twitterApiUser(
            ref,
            userIds,
          ),
          from: twitterApiUserProvider,
          name: r'twitterApiUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $twitterApiUserHash,
        );

  final List<String> userIds;

  @override
  bool operator ==(Object other) {
    return other is TwitterApiUserProvider && other.userIds == userIds;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userIds.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef TwitterApiUserRef = AutoDisposeFutureProviderRef<List<UserData>>;

/// See also [twitterApiUser].
final twitterApiUserProvider = TwitterApiUserFamily();

class TwitterApiUserFamily extends Family<AsyncValue<List<UserData>>> {
  TwitterApiUserFamily();

  TwitterApiUserProvider call(
    List<String> userIds,
  ) {
    return TwitterApiUserProvider(
      userIds,
    );
  }

  @override
  AutoDisposeFutureProvider<List<UserData>> getProviderOverride(
    covariant TwitterApiUserProvider provider,
  ) {
    return call(
      provider.userIds,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'twitterApiUserProvider';
}

String $twitterApiTimelineHash() => r'f453b1b45c03e15c2f116394f23304e833c15d17';

/// See also [twitterApiTimeline].
class TwitterApiTimelineProvider extends AutoDisposeFutureProvider<
    TwitterResponse<List<TweetData>, TweetMeta>> {
  TwitterApiTimelineProvider(
    this.nextToken,
  ) : super(
          (ref) => twitterApiTimeline(
            ref,
            nextToken,
          ),
          from: twitterApiTimelineProvider,
          name: r'twitterApiTimelineProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $twitterApiTimelineHash,
        );

  final String? nextToken;

  @override
  bool operator ==(Object other) {
    return other is TwitterApiTimelineProvider && other.nextToken == nextToken;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, nextToken.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef TwitterApiTimelineRef
    = AutoDisposeFutureProviderRef<TwitterResponse<List<TweetData>, TweetMeta>>;

/// See also [twitterApiTimeline].
final twitterApiTimelineProvider = TwitterApiTimelineFamily();

class TwitterApiTimelineFamily
    extends Family<AsyncValue<TwitterResponse<List<TweetData>, TweetMeta>>> {
  TwitterApiTimelineFamily();

  TwitterApiTimelineProvider call(
    String? nextToken,
  ) {
    return TwitterApiTimelineProvider(
      nextToken,
    );
  }

  @override
  AutoDisposeFutureProvider<TwitterResponse<List<TweetData>, TweetMeta>>
      getProviderOverride(
    covariant TwitterApiTimelineProvider provider,
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
  String? get name => r'twitterApiTimelineProvider';
}
