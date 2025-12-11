// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_data_crypto.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getMonthlyDataCryptoHash() =>
    r'b21ce4bb33592c480b852b9260e1c8b74a0bb51c';

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

/// See also [getMonthlyDataCrypto].
@ProviderFor(getMonthlyDataCrypto)
const getMonthlyDataCryptoProvider = GetMonthlyDataCryptoFamily();

/// See also [getMonthlyDataCrypto].
class GetMonthlyDataCryptoFamily
    extends Family<AsyncValue<ProbabilityResponse>> {
  /// See also [getMonthlyDataCrypto].
  const GetMonthlyDataCryptoFamily();

  /// See also [getMonthlyDataCrypto].
  GetMonthlyDataCryptoProvider call(String ticker, String assetType) {
    return GetMonthlyDataCryptoProvider(ticker, assetType);
  }

  @override
  GetMonthlyDataCryptoProvider getProviderOverride(
    covariant GetMonthlyDataCryptoProvider provider,
  ) {
    return call(provider.ticker, provider.assetType);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getMonthlyDataCryptoProvider';
}

/// See also [getMonthlyDataCrypto].
class GetMonthlyDataCryptoProvider extends FutureProvider<ProbabilityResponse> {
  /// See also [getMonthlyDataCrypto].
  GetMonthlyDataCryptoProvider(String ticker, String assetType)
    : this._internal(
        (ref) => getMonthlyDataCrypto(
          ref as GetMonthlyDataCryptoRef,
          ticker,
          assetType,
        ),
        from: getMonthlyDataCryptoProvider,
        name: r'getMonthlyDataCryptoProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$getMonthlyDataCryptoHash,
        dependencies: GetMonthlyDataCryptoFamily._dependencies,
        allTransitiveDependencies:
            GetMonthlyDataCryptoFamily._allTransitiveDependencies,
        ticker: ticker,
        assetType: assetType,
      );

  GetMonthlyDataCryptoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.ticker,
    required this.assetType,
  }) : super.internal();

  final String ticker;
  final String assetType;

  @override
  Override overrideWith(
    FutureOr<ProbabilityResponse> Function(GetMonthlyDataCryptoRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetMonthlyDataCryptoProvider._internal(
        (ref) => create(ref as GetMonthlyDataCryptoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        ticker: ticker,
        assetType: assetType,
      ),
    );
  }

  @override
  FutureProviderElement<ProbabilityResponse> createElement() {
    return _GetMonthlyDataCryptoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetMonthlyDataCryptoProvider &&
        other.ticker == ticker &&
        other.assetType == assetType;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, ticker.hashCode);
    hash = _SystemHash.combine(hash, assetType.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetMonthlyDataCryptoRef on FutureProviderRef<ProbabilityResponse> {
  /// The parameter `ticker` of this provider.
  String get ticker;

  /// The parameter `assetType` of this provider.
  String get assetType;
}

class _GetMonthlyDataCryptoProviderElement
    extends FutureProviderElement<ProbabilityResponse>
    with GetMonthlyDataCryptoRef {
  _GetMonthlyDataCryptoProviderElement(super.provider);

  @override
  String get ticker => (origin as GetMonthlyDataCryptoProvider).ticker;
  @override
  String get assetType => (origin as GetMonthlyDataCryptoProvider).assetType;
}

String _$monthlyDataCryptoHash() => r'045eaf534ed7a39fa3a91389cc7bc929db092d40';

/// See also [MonthlyDataCrypto].
@ProviderFor(MonthlyDataCrypto)
final monthlyDataCryptoProvider =
    AutoDisposeAsyncNotifierProvider<
      MonthlyDataCrypto,
      ProbabilityResponse
    >.internal(
      MonthlyDataCrypto.new,
      name: r'monthlyDataCryptoProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$monthlyDataCryptoHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$MonthlyDataCrypto = AutoDisposeAsyncNotifier<ProbabilityResponse>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
