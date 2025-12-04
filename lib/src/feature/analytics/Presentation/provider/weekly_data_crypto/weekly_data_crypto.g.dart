// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_data_crypto.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getWeeklyDataCryptoHash() =>
    r'69ee4cd294fa7df52043c7e2d413ccb5290348be';

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

/// See also [getWeeklyDataCrypto].
@ProviderFor(getWeeklyDataCrypto)
const getWeeklyDataCryptoProvider = GetWeeklyDataCryptoFamily();

/// See also [getWeeklyDataCrypto].
class GetWeeklyDataCryptoFamily extends Family<AsyncValue<WeeklyModel>> {
  /// See also [getWeeklyDataCrypto].
  const GetWeeklyDataCryptoFamily();

  /// See also [getWeeklyDataCrypto].
  GetWeeklyDataCryptoProvider call(String ticker, String assetType) {
    return GetWeeklyDataCryptoProvider(ticker, assetType);
  }

  @override
  GetWeeklyDataCryptoProvider getProviderOverride(
    covariant GetWeeklyDataCryptoProvider provider,
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
  String? get name => r'getWeeklyDataCryptoProvider';
}

/// See also [getWeeklyDataCrypto].
class GetWeeklyDataCryptoProvider
    extends AutoDisposeFutureProvider<WeeklyModel> {
  /// See also [getWeeklyDataCrypto].
  GetWeeklyDataCryptoProvider(String ticker, String assetType)
    : this._internal(
        (ref) => getWeeklyDataCrypto(
          ref as GetWeeklyDataCryptoRef,
          ticker,
          assetType,
        ),
        from: getWeeklyDataCryptoProvider,
        name: r'getWeeklyDataCryptoProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$getWeeklyDataCryptoHash,
        dependencies: GetWeeklyDataCryptoFamily._dependencies,
        allTransitiveDependencies:
            GetWeeklyDataCryptoFamily._allTransitiveDependencies,
        ticker: ticker,
        assetType: assetType,
      );

  GetWeeklyDataCryptoProvider._internal(
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
    FutureOr<WeeklyModel> Function(GetWeeklyDataCryptoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetWeeklyDataCryptoProvider._internal(
        (ref) => create(ref as GetWeeklyDataCryptoRef),
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
  AutoDisposeFutureProviderElement<WeeklyModel> createElement() {
    return _GetWeeklyDataCryptoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetWeeklyDataCryptoProvider &&
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
mixin GetWeeklyDataCryptoRef on AutoDisposeFutureProviderRef<WeeklyModel> {
  /// The parameter `ticker` of this provider.
  String get ticker;

  /// The parameter `assetType` of this provider.
  String get assetType;
}

class _GetWeeklyDataCryptoProviderElement
    extends AutoDisposeFutureProviderElement<WeeklyModel>
    with GetWeeklyDataCryptoRef {
  _GetWeeklyDataCryptoProviderElement(super.provider);

  @override
  String get ticker => (origin as GetWeeklyDataCryptoProvider).ticker;
  @override
  String get assetType => (origin as GetWeeklyDataCryptoProvider).assetType;
}

String _$weeklyDataCryptoHash() => r'85c4f9a50226fa7568a2eae62d5a71bde636fb41';

/// See also [WeeklyDataCrypto].
@ProviderFor(WeeklyDataCrypto)
final weeklyDataCryptoProvider =
    AutoDisposeAsyncNotifierProvider<WeeklyDataCrypto, WeeklyModel>.internal(
      WeeklyDataCrypto.new,
      name: r'weeklyDataCryptoProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$weeklyDataCryptoHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$WeeklyDataCrypto = AutoDisposeAsyncNotifier<WeeklyModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
