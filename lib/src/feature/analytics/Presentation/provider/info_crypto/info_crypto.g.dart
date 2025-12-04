// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_crypto.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$infoCryptoDataHash() => r'41a31fbe15b77627f6e63b47ed692f27903bec81';

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

/// See also [infoCryptoData].
@ProviderFor(infoCryptoData)
const infoCryptoDataProvider = InfoCryptoDataFamily();

/// See also [infoCryptoData].
class InfoCryptoDataFamily extends Family<AsyncValue<InfoCryptoResponse>> {
  /// See also [infoCryptoData].
  const InfoCryptoDataFamily();

  /// See also [infoCryptoData].
  InfoCryptoDataProvider call(String ticker) {
    return InfoCryptoDataProvider(ticker);
  }

  @override
  InfoCryptoDataProvider getProviderOverride(
    covariant InfoCryptoDataProvider provider,
  ) {
    return call(provider.ticker);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'infoCryptoDataProvider';
}

/// See also [infoCryptoData].
class InfoCryptoDataProvider
    extends AutoDisposeFutureProvider<InfoCryptoResponse> {
  /// See also [infoCryptoData].
  InfoCryptoDataProvider(String ticker)
    : this._internal(
        (ref) => infoCryptoData(ref as InfoCryptoDataRef, ticker),
        from: infoCryptoDataProvider,
        name: r'infoCryptoDataProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$infoCryptoDataHash,
        dependencies: InfoCryptoDataFamily._dependencies,
        allTransitiveDependencies:
            InfoCryptoDataFamily._allTransitiveDependencies,
        ticker: ticker,
      );

  InfoCryptoDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.ticker,
  }) : super.internal();

  final String ticker;

  @override
  Override overrideWith(
    FutureOr<InfoCryptoResponse> Function(InfoCryptoDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: InfoCryptoDataProvider._internal(
        (ref) => create(ref as InfoCryptoDataRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        ticker: ticker,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<InfoCryptoResponse> createElement() {
    return _InfoCryptoDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InfoCryptoDataProvider && other.ticker == ticker;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, ticker.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin InfoCryptoDataRef on AutoDisposeFutureProviderRef<InfoCryptoResponse> {
  /// The parameter `ticker` of this provider.
  String get ticker;
}

class _InfoCryptoDataProviderElement
    extends AutoDisposeFutureProviderElement<InfoCryptoResponse>
    with InfoCryptoDataRef {
  _InfoCryptoDataProviderElement(super.provider);

  @override
  String get ticker => (origin as InfoCryptoDataProvider).ticker;
}

String _$infoCryptoHash() => r'c5542d6d2c987b0539c45b132b2bc18140d4da23';

/// See also [InfoCrypto].
@ProviderFor(InfoCrypto)
final infoCryptoProvider =
    AutoDisposeAsyncNotifierProvider<InfoCrypto, InfoCryptoResponse>.internal(
      InfoCrypto.new,
      name: r'infoCryptoProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$infoCryptoHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$InfoCrypto = AutoDisposeAsyncNotifier<InfoCryptoResponse>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
