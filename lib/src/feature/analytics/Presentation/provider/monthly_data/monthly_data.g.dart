// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_data.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getMonthlyDataHash() => r'9287744e2a797d5937c29472bed771d60d2ded14';

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

/// See also [getMonthlyData].
@ProviderFor(getMonthlyData)
const getMonthlyDataProvider = GetMonthlyDataFamily();

/// See also [getMonthlyData].
class GetMonthlyDataFamily extends Family<AsyncValue<ProbabilityResponse>> {
  /// See also [getMonthlyData].
  const GetMonthlyDataFamily();

  /// See also [getMonthlyData].
  GetMonthlyDataProvider call(String ticker) {
    return GetMonthlyDataProvider(ticker);
  }

  @override
  GetMonthlyDataProvider getProviderOverride(
    covariant GetMonthlyDataProvider provider,
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
  String? get name => r'getMonthlyDataProvider';
}

/// See also [getMonthlyData].
class GetMonthlyDataProvider
    extends AutoDisposeFutureProvider<ProbabilityResponse> {
  /// See also [getMonthlyData].
  GetMonthlyDataProvider(String ticker)
    : this._internal(
        (ref) => getMonthlyData(ref as GetMonthlyDataRef, ticker),
        from: getMonthlyDataProvider,
        name: r'getMonthlyDataProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$getMonthlyDataHash,
        dependencies: GetMonthlyDataFamily._dependencies,
        allTransitiveDependencies:
            GetMonthlyDataFamily._allTransitiveDependencies,
        ticker: ticker,
      );

  GetMonthlyDataProvider._internal(
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
    FutureOr<ProbabilityResponse> Function(GetMonthlyDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetMonthlyDataProvider._internal(
        (ref) => create(ref as GetMonthlyDataRef),
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
  AutoDisposeFutureProviderElement<ProbabilityResponse> createElement() {
    return _GetMonthlyDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetMonthlyDataProvider && other.ticker == ticker;
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
mixin GetMonthlyDataRef on AutoDisposeFutureProviderRef<ProbabilityResponse> {
  /// The parameter `ticker` of this provider.
  String get ticker;
}

class _GetMonthlyDataProviderElement
    extends AutoDisposeFutureProviderElement<ProbabilityResponse>
    with GetMonthlyDataRef {
  _GetMonthlyDataProviderElement(super.provider);

  @override
  String get ticker => (origin as GetMonthlyDataProvider).ticker;
}

String _$monthlyDataHash() => r'55d3ac200c1ac5c788327311f247b3655ed5b87b';

/// See also [MonthlyData].
@ProviderFor(MonthlyData)
final monthlyDataProvider =
    AutoDisposeAsyncNotifierProvider<MonthlyData, ProbabilityResponse>.internal(
      MonthlyData.new,
      name: r'monthlyDataProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$monthlyDataHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$MonthlyData = AutoDisposeAsyncNotifier<ProbabilityResponse>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
