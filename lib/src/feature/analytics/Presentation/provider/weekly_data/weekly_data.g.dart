// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_data.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getWeeklyDataHash() => r'1f71496cf399d505be805feefdaba75738d60f92';

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

/// See also [getWeeklyData].
@ProviderFor(getWeeklyData)
const getWeeklyDataProvider = GetWeeklyDataFamily();

/// See also [getWeeklyData].
class GetWeeklyDataFamily extends Family<AsyncValue<WeeklyModel>> {
  /// See also [getWeeklyData].
  const GetWeeklyDataFamily();

  /// See also [getWeeklyData].
  GetWeeklyDataProvider call(String ticker) {
    return GetWeeklyDataProvider(ticker);
  }

  @override
  GetWeeklyDataProvider getProviderOverride(
    covariant GetWeeklyDataProvider provider,
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
  String? get name => r'getWeeklyDataProvider';
}

/// See also [getWeeklyData].
class GetWeeklyDataProvider extends FutureProvider<WeeklyModel> {
  /// See also [getWeeklyData].
  GetWeeklyDataProvider(String ticker)
    : this._internal(
        (ref) => getWeeklyData(ref as GetWeeklyDataRef, ticker),
        from: getWeeklyDataProvider,
        name: r'getWeeklyDataProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$getWeeklyDataHash,
        dependencies: GetWeeklyDataFamily._dependencies,
        allTransitiveDependencies:
            GetWeeklyDataFamily._allTransitiveDependencies,
        ticker: ticker,
      );

  GetWeeklyDataProvider._internal(
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
    FutureOr<WeeklyModel> Function(GetWeeklyDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetWeeklyDataProvider._internal(
        (ref) => create(ref as GetWeeklyDataRef),
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
  FutureProviderElement<WeeklyModel> createElement() {
    return _GetWeeklyDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetWeeklyDataProvider && other.ticker == ticker;
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
mixin GetWeeklyDataRef on FutureProviderRef<WeeklyModel> {
  /// The parameter `ticker` of this provider.
  String get ticker;
}

class _GetWeeklyDataProviderElement extends FutureProviderElement<WeeklyModel>
    with GetWeeklyDataRef {
  _GetWeeklyDataProviderElement(super.provider);

  @override
  String get ticker => (origin as GetWeeklyDataProvider).ticker;
}

String _$weeklyDataHash() => r'af73d518abe49e2118be3ec91f31ea62c63031de';

/// See also [WeeklyData].
@ProviderFor(WeeklyData)
final weeklyDataProvider =
    AutoDisposeAsyncNotifierProvider<WeeklyData, WeeklyModel>.internal(
      WeeklyData.new,
      name: r'weeklyDataProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$weeklyDataHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$WeeklyData = AutoDisposeAsyncNotifier<WeeklyModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
