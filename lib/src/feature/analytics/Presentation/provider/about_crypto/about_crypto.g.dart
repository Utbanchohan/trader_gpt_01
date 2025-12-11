// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_crypto.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getAboutCryptoHash() => r'04a910fdb815957114f1fa146beefb40fc084845';

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

/// See also [getAboutCrypto].
@ProviderFor(getAboutCrypto)
const getAboutCryptoProvider = GetAboutCryptoFamily();

/// See also [getAboutCrypto].
class GetAboutCryptoFamily extends Family<AsyncValue<AboutCryptoModel>> {
  /// See also [getAboutCrypto].
  const GetAboutCryptoFamily();

  /// See also [getAboutCrypto].
  GetAboutCryptoProvider call(String symbol) {
    return GetAboutCryptoProvider(symbol);
  }

  @override
  GetAboutCryptoProvider getProviderOverride(
    covariant GetAboutCryptoProvider provider,
  ) {
    return call(provider.symbol);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getAboutCryptoProvider';
}

/// See also [getAboutCrypto].
class GetAboutCryptoProvider extends FutureProvider<AboutCryptoModel> {
  /// See also [getAboutCrypto].
  GetAboutCryptoProvider(String symbol)
    : this._internal(
        (ref) => getAboutCrypto(ref as GetAboutCryptoRef, symbol),
        from: getAboutCryptoProvider,
        name: r'getAboutCryptoProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$getAboutCryptoHash,
        dependencies: GetAboutCryptoFamily._dependencies,
        allTransitiveDependencies:
            GetAboutCryptoFamily._allTransitiveDependencies,
        symbol: symbol,
      );

  GetAboutCryptoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.symbol,
  }) : super.internal();

  final String symbol;

  @override
  Override overrideWith(
    FutureOr<AboutCryptoModel> Function(GetAboutCryptoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAboutCryptoProvider._internal(
        (ref) => create(ref as GetAboutCryptoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        symbol: symbol,
      ),
    );
  }

  @override
  FutureProviderElement<AboutCryptoModel> createElement() {
    return _GetAboutCryptoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAboutCryptoProvider && other.symbol == symbol;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, symbol.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetAboutCryptoRef on FutureProviderRef<AboutCryptoModel> {
  /// The parameter `symbol` of this provider.
  String get symbol;
}

class _GetAboutCryptoProviderElement
    extends FutureProviderElement<AboutCryptoModel>
    with GetAboutCryptoRef {
  _GetAboutCryptoProviderElement(super.provider);

  @override
  String get symbol => (origin as GetAboutCryptoProvider).symbol;
}

String _$aboutCryptoHash() => r'611df52ea959b92e1ab852b40e9e1fafd77ad259';

/// See also [AboutCrypto].
@ProviderFor(AboutCrypto)
final aboutCryptoProvider =
    AutoDisposeAsyncNotifierProvider<AboutCrypto, ProbabilityResponse>.internal(
      AboutCrypto.new,
      name: r'aboutCryptoProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$aboutCryptoHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$AboutCrypto = AutoDisposeAsyncNotifier<ProbabilityResponse>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
