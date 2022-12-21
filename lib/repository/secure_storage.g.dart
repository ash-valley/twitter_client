// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secure_storage.dart';

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

String $flutterSecureStorageHash() =>
    r'04c4b9c1628578344b18cad756230eee7b28cb00';

/// See also [flutterSecureStorage].
final flutterSecureStorageProvider = AutoDisposeProvider<FlutterSecureStorage>(
  flutterSecureStorage,
  name: r'flutterSecureStorageProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $flutterSecureStorageHash,
);
typedef FlutterSecureStorageRef = AutoDisposeProviderRef<FlutterSecureStorage>;
String $writeSecureStorageHash() => r'46df58abb23efdef2da942bc557c85c6853a2c03';

/// See also [writeSecureStorage].
class WriteSecureStorageProvider extends AutoDisposeFutureProvider<void> {
  WriteSecureStorageProvider(
    this.secureStorage,
  ) : super(
          (ref) => writeSecureStorage(
            ref,
            secureStorage,
          ),
          from: writeSecureStorageProvider,
          name: r'writeSecureStorageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $writeSecureStorageHash,
        );

  final SecureStorage secureStorage;

  @override
  bool operator ==(Object other) {
    return other is WriteSecureStorageProvider &&
        other.secureStorage == secureStorage;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, secureStorage.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef WriteSecureStorageRef = AutoDisposeFutureProviderRef<void>;

/// See also [writeSecureStorage].
final writeSecureStorageProvider = WriteSecureStorageFamily();

class WriteSecureStorageFamily extends Family<AsyncValue<void>> {
  WriteSecureStorageFamily();

  WriteSecureStorageProvider call(
    SecureStorage secureStorage,
  ) {
    return WriteSecureStorageProvider(
      secureStorage,
    );
  }

  @override
  AutoDisposeFutureProvider<void> getProviderOverride(
    covariant WriteSecureStorageProvider provider,
  ) {
    return call(
      provider.secureStorage,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'writeSecureStorageProvider';
}

String $readSecureStorageHash() => r'181de89c3f97c57131d5478f002b50b8b1ce7ac9';

/// See also [readSecureStorage].
class ReadSecureStorageProvider extends FutureProvider<SecureStorage?> {
  ReadSecureStorageProvider(
    this.key,
  ) : super(
          (ref) => readSecureStorage(
            ref,
            key,
          ),
          from: readSecureStorageProvider,
          name: r'readSecureStorageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $readSecureStorageHash,
        );

  final SecureStorageKey key;

  @override
  bool operator ==(Object other) {
    return other is ReadSecureStorageProvider && other.key == key;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef ReadSecureStorageRef = FutureProviderRef<SecureStorage?>;

/// See also [readSecureStorage].
final readSecureStorageProvider = ReadSecureStorageFamily();

class ReadSecureStorageFamily extends Family<AsyncValue<SecureStorage?>> {
  ReadSecureStorageFamily();

  ReadSecureStorageProvider call(
    SecureStorageKey key,
  ) {
    return ReadSecureStorageProvider(
      key,
    );
  }

  @override
  FutureProvider<SecureStorage?> getProviderOverride(
    covariant ReadSecureStorageProvider provider,
  ) {
    return call(
      provider.key,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'readSecureStorageProvider';
}

String $deleteSecureStorageHash() =>
    r'55ee64e2d75eb18d053456797e2ebd875c9fee52';

/// See also [deleteSecureStorage].
class DeleteSecureStorageProvider extends AutoDisposeFutureProvider<void> {
  DeleteSecureStorageProvider(
    this.key,
  ) : super(
          (ref) => deleteSecureStorage(
            ref,
            key,
          ),
          from: deleteSecureStorageProvider,
          name: r'deleteSecureStorageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $deleteSecureStorageHash,
        );

  final SecureStorageKey key;

  @override
  bool operator ==(Object other) {
    return other is DeleteSecureStorageProvider && other.key == key;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef DeleteSecureStorageRef = AutoDisposeFutureProviderRef<void>;

/// See also [deleteSecureStorage].
final deleteSecureStorageProvider = DeleteSecureStorageFamily();

class DeleteSecureStorageFamily extends Family<AsyncValue<void>> {
  DeleteSecureStorageFamily();

  DeleteSecureStorageProvider call(
    SecureStorageKey key,
  ) {
    return DeleteSecureStorageProvider(
      key,
    );
  }

  @override
  AutoDisposeFutureProvider<void> getProviderOverride(
    covariant DeleteSecureStorageProvider provider,
  ) {
    return call(
      provider.key,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'deleteSecureStorageProvider';
}
