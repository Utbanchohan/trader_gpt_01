// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getOverviewHash() => r'615312b36b1a1db3aebe36b90970e326108aa8f0';

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

/// See also [getOverview].
@ProviderFor(getOverview)
const getOverviewProvider = GetOverviewFamily();

/// See also [getOverview].
class GetOverviewFamily extends Family<AsyncValue<OverviewData?>> {
  /// See also [getOverview].
  const GetOverviewFamily();

  /// See also [getOverview].
  GetOverviewProvider call(String symbol) {
    return GetOverviewProvider(symbol);
  }

  @override
  GetOverviewProvider getProviderOverride(
    covariant GetOverviewProvider provider,
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
  String? get name => r'getOverviewProvider';
}

/// See also [getOverview].
class GetOverviewProvider extends FutureProvider<OverviewData?> {
  /// See also [getOverview].
  GetOverviewProvider(String symbol)
    : this._internal(
        (ref) => getOverview(ref as GetOverviewRef, symbol),
        from: getOverviewProvider,
        name: r'getOverviewProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$getOverviewHash,
        dependencies: GetOverviewFamily._dependencies,
        allTransitiveDependencies: GetOverviewFamily._allTransitiveDependencies,
        symbol: symbol,
      );

  GetOverviewProvider._internal(
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
    FutureOr<OverviewData?> Function(GetOverviewRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetOverviewProvider._internal(
        (ref) => create(ref as GetOverviewRef),
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
  FutureProviderElement<OverviewData?> createElement() {
    return _GetOverviewProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetOverviewProvider && other.symbol == symbol;
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
mixin GetOverviewRef on FutureProviderRef<OverviewData?> {
  /// The parameter `symbol` of this provider.
  String get symbol;
}

class _GetOverviewProviderElement extends FutureProviderElement<OverviewData?>
    with GetOverviewRef {
  _GetOverviewProviderElement(super.provider);

  @override
  String get symbol => (origin as GetOverviewProvider).symbol;
}

String _$priceTargetMatricsHash() =>
    r'3948228b3a45dc10964a6583b0fe56d34c93c1e5';

/// See also [priceTargetMatrics].
@ProviderFor(priceTargetMatrics)
const priceTargetMatricsProvider = PriceTargetMatricsFamily();

/// See also [priceTargetMatrics].
class PriceTargetMatricsFamily
    extends Family<AsyncValue<List<PriceTargetData?>?>> {
  /// See also [priceTargetMatrics].
  const PriceTargetMatricsFamily();

  /// See also [priceTargetMatrics].
  PriceTargetMatricsProvider call(SymbolDto symbol) {
    return PriceTargetMatricsProvider(symbol);
  }

  @override
  PriceTargetMatricsProvider getProviderOverride(
    covariant PriceTargetMatricsProvider provider,
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
  String? get name => r'priceTargetMatricsProvider';
}

/// See also [priceTargetMatrics].
class PriceTargetMatricsProvider
    extends FutureProvider<List<PriceTargetData?>?> {
  /// See also [priceTargetMatrics].
  PriceTargetMatricsProvider(SymbolDto symbol)
    : this._internal(
        (ref) => priceTargetMatrics(ref as PriceTargetMatricsRef, symbol),
        from: priceTargetMatricsProvider,
        name: r'priceTargetMatricsProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$priceTargetMatricsHash,
        dependencies: PriceTargetMatricsFamily._dependencies,
        allTransitiveDependencies:
            PriceTargetMatricsFamily._allTransitiveDependencies,
        symbol: symbol,
      );

  PriceTargetMatricsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.symbol,
  }) : super.internal();

  final SymbolDto symbol;

  @override
  Override overrideWith(
    FutureOr<List<PriceTargetData?>?> Function(PriceTargetMatricsRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PriceTargetMatricsProvider._internal(
        (ref) => create(ref as PriceTargetMatricsRef),
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
  FutureProviderElement<List<PriceTargetData?>?> createElement() {
    return _PriceTargetMatricsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PriceTargetMatricsProvider && other.symbol == symbol;
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
mixin PriceTargetMatricsRef on FutureProviderRef<List<PriceTargetData?>?> {
  /// The parameter `symbol` of this provider.
  SymbolDto get symbol;
}

class _PriceTargetMatricsProviderElement
    extends FutureProviderElement<List<PriceTargetData?>?>
    with PriceTargetMatricsRef {
  _PriceTargetMatricsProviderElement(super.provider);

  @override
  SymbolDto get symbol => (origin as PriceTargetMatricsProvider).symbol;
}

String _$matricsDataHash() => r'e37c4dd42ab28f3007ef8295d2bed9a94f4af4ea';

/// See also [matricsData].
@ProviderFor(matricsData)
const matricsDataProvider = MatricsDataFamily();

/// See also [matricsData].
class MatricsDataFamily extends Family<AsyncValue<MatricsResponse?>> {
  /// See also [matricsData].
  const MatricsDataFamily();

  /// See also [matricsData].
  MatricsDataProvider call(String symbol) {
    return MatricsDataProvider(symbol);
  }

  @override
  MatricsDataProvider getProviderOverride(
    covariant MatricsDataProvider provider,
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
  String? get name => r'matricsDataProvider';
}

/// See also [matricsData].
class MatricsDataProvider extends FutureProvider<MatricsResponse?> {
  /// See also [matricsData].
  MatricsDataProvider(String symbol)
    : this._internal(
        (ref) => matricsData(ref as MatricsDataRef, symbol),
        from: matricsDataProvider,
        name: r'matricsDataProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$matricsDataHash,
        dependencies: MatricsDataFamily._dependencies,
        allTransitiveDependencies: MatricsDataFamily._allTransitiveDependencies,
        symbol: symbol,
      );

  MatricsDataProvider._internal(
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
    FutureOr<MatricsResponse?> Function(MatricsDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MatricsDataProvider._internal(
        (ref) => create(ref as MatricsDataRef),
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
  FutureProviderElement<MatricsResponse?> createElement() {
    return _MatricsDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MatricsDataProvider && other.symbol == symbol;
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
mixin MatricsDataRef on FutureProviderRef<MatricsResponse?> {
  /// The parameter `symbol` of this provider.
  String get symbol;
}

class _MatricsDataProviderElement
    extends FutureProviderElement<MatricsResponse?>
    with MatricsDataRef {
  _MatricsDataProviderElement(super.provider);

  @override
  String get symbol => (origin as MatricsDataProvider).symbol;
}

String _$pricePerformanceHash() => r'81ddbcfb2ed1944d132bcaada05bfe607f16f775';

/// See also [pricePerformance].
@ProviderFor(pricePerformance)
const pricePerformanceProvider = PricePerformanceFamily();

/// See also [pricePerformance].
class PricePerformanceFamily extends Family<AsyncValue<PricePerformance?>> {
  /// See also [pricePerformance].
  const PricePerformanceFamily();

  /// See also [pricePerformance].
  PricePerformanceProvider call(SymbolDto symbol) {
    return PricePerformanceProvider(symbol);
  }

  @override
  PricePerformanceProvider getProviderOverride(
    covariant PricePerformanceProvider provider,
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
  String? get name => r'pricePerformanceProvider';
}

/// See also [pricePerformance].
class PricePerformanceProvider extends FutureProvider<PricePerformance?> {
  /// See also [pricePerformance].
  PricePerformanceProvider(SymbolDto symbol)
    : this._internal(
        (ref) => pricePerformance(ref as PricePerformanceRef, symbol),
        from: pricePerformanceProvider,
        name: r'pricePerformanceProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$pricePerformanceHash,
        dependencies: PricePerformanceFamily._dependencies,
        allTransitiveDependencies:
            PricePerformanceFamily._allTransitiveDependencies,
        symbol: symbol,
      );

  PricePerformanceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.symbol,
  }) : super.internal();

  final SymbolDto symbol;

  @override
  Override overrideWith(
    FutureOr<PricePerformance?> Function(PricePerformanceRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PricePerformanceProvider._internal(
        (ref) => create(ref as PricePerformanceRef),
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
  FutureProviderElement<PricePerformance?> createElement() {
    return _PricePerformanceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PricePerformanceProvider && other.symbol == symbol;
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
mixin PricePerformanceRef on FutureProviderRef<PricePerformance?> {
  /// The parameter `symbol` of this provider.
  SymbolDto get symbol;
}

class _PricePerformanceProviderElement
    extends FutureProviderElement<PricePerformance?>
    with PricePerformanceRef {
  _PricePerformanceProviderElement(super.provider);

  @override
  SymbolDto get symbol => (origin as PricePerformanceProvider).symbol;
}

String _$shareStatsHash() => r'9c482c81a13cc0596fe510e72af6f56221047cec';

/// See also [shareStats].
@ProviderFor(shareStats)
const shareStatsProvider = ShareStatsFamily();

/// See also [shareStats].
class ShareStatsFamily extends Family<AsyncValue<SharesResponse?>> {
  /// See also [shareStats].
  const ShareStatsFamily();

  /// See also [shareStats].
  ShareStatsProvider call(SymbolDto symbol) {
    return ShareStatsProvider(symbol);
  }

  @override
  ShareStatsProvider getProviderOverride(
    covariant ShareStatsProvider provider,
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
  String? get name => r'shareStatsProvider';
}

/// See also [shareStats].
class ShareStatsProvider extends FutureProvider<SharesResponse?> {
  /// See also [shareStats].
  ShareStatsProvider(SymbolDto symbol)
    : this._internal(
        (ref) => shareStats(ref as ShareStatsRef, symbol),
        from: shareStatsProvider,
        name: r'shareStatsProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$shareStatsHash,
        dependencies: ShareStatsFamily._dependencies,
        allTransitiveDependencies: ShareStatsFamily._allTransitiveDependencies,
        symbol: symbol,
      );

  ShareStatsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.symbol,
  }) : super.internal();

  final SymbolDto symbol;

  @override
  Override overrideWith(
    FutureOr<SharesResponse?> Function(ShareStatsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ShareStatsProvider._internal(
        (ref) => create(ref as ShareStatsRef),
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
  FutureProviderElement<SharesResponse?> createElement() {
    return _ShareStatsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ShareStatsProvider && other.symbol == symbol;
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
mixin ShareStatsRef on FutureProviderRef<SharesResponse?> {
  /// The parameter `symbol` of this provider.
  SymbolDto get symbol;
}

class _ShareStatsProviderElement extends FutureProviderElement<SharesResponse?>
    with ShareStatsRef {
  _ShareStatsProviderElement(super.provider);

  @override
  SymbolDto get symbol => (origin as ShareStatsProvider).symbol;
}

String _$fundamentalDataHash() => r'ae3be63fe911e91dbbd52deace250e179a2af816';

/// See also [fundamentalData].
@ProviderFor(fundamentalData)
const fundamentalDataProvider = FundamentalDataFamily();

/// See also [fundamentalData].
class FundamentalDataFamily extends Family<AsyncValue<FundamentalResponse?>> {
  /// See also [fundamentalData].
  const FundamentalDataFamily();

  /// See also [fundamentalData].
  FundamentalDataProvider call(SymbolDto symbol) {
    return FundamentalDataProvider(symbol);
  }

  @override
  FundamentalDataProvider getProviderOverride(
    covariant FundamentalDataProvider provider,
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
  String? get name => r'fundamentalDataProvider';
}

/// See also [fundamentalData].
class FundamentalDataProvider extends FutureProvider<FundamentalResponse?> {
  /// See also [fundamentalData].
  FundamentalDataProvider(SymbolDto symbol)
    : this._internal(
        (ref) => fundamentalData(ref as FundamentalDataRef, symbol),
        from: fundamentalDataProvider,
        name: r'fundamentalDataProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$fundamentalDataHash,
        dependencies: FundamentalDataFamily._dependencies,
        allTransitiveDependencies:
            FundamentalDataFamily._allTransitiveDependencies,
        symbol: symbol,
      );

  FundamentalDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.symbol,
  }) : super.internal();

  final SymbolDto symbol;

  @override
  Override overrideWith(
    FutureOr<FundamentalResponse?> Function(FundamentalDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FundamentalDataProvider._internal(
        (ref) => create(ref as FundamentalDataRef),
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
  FutureProviderElement<FundamentalResponse?> createElement() {
    return _FundamentalDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FundamentalDataProvider && other.symbol == symbol;
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
mixin FundamentalDataRef on FutureProviderRef<FundamentalResponse?> {
  /// The parameter `symbol` of this provider.
  SymbolDto get symbol;
}

class _FundamentalDataProviderElement
    extends FutureProviderElement<FundamentalResponse?>
    with FundamentalDataRef {
  _FundamentalDataProviderElement(super.provider);

  @override
  SymbolDto get symbol => (origin as FundamentalDataProvider).symbol;
}

String _$priceComparisonHash() => r'c80f74e778e61c64437ad2e6d0b3d2cd4d393b7c';

/// See also [priceComparison].
@ProviderFor(priceComparison)
const priceComparisonProvider = PriceComparisonFamily();

/// See also [priceComparison].
class PriceComparisonFamily extends Family<AsyncValue<PriceComparisonModel?>> {
  /// See also [priceComparison].
  const PriceComparisonFamily();

  /// See also [priceComparison].
  PriceComparisonProvider call(PriceComparisonDto priceComparisonDto) {
    return PriceComparisonProvider(priceComparisonDto);
  }

  @override
  PriceComparisonProvider getProviderOverride(
    covariant PriceComparisonProvider provider,
  ) {
    return call(provider.priceComparisonDto);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'priceComparisonProvider';
}

/// See also [priceComparison].
class PriceComparisonProvider extends FutureProvider<PriceComparisonModel?> {
  /// See also [priceComparison].
  PriceComparisonProvider(PriceComparisonDto priceComparisonDto)
    : this._internal(
        (ref) => priceComparison(ref as PriceComparisonRef, priceComparisonDto),
        from: priceComparisonProvider,
        name: r'priceComparisonProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$priceComparisonHash,
        dependencies: PriceComparisonFamily._dependencies,
        allTransitiveDependencies:
            PriceComparisonFamily._allTransitiveDependencies,
        priceComparisonDto: priceComparisonDto,
      );

  PriceComparisonProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.priceComparisonDto,
  }) : super.internal();

  final PriceComparisonDto priceComparisonDto;

  @override
  Override overrideWith(
    FutureOr<PriceComparisonModel?> Function(PriceComparisonRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PriceComparisonProvider._internal(
        (ref) => create(ref as PriceComparisonRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        priceComparisonDto: priceComparisonDto,
      ),
    );
  }

  @override
  FutureProviderElement<PriceComparisonModel?> createElement() {
    return _PriceComparisonProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PriceComparisonProvider &&
        other.priceComparisonDto == priceComparisonDto;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, priceComparisonDto.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PriceComparisonRef on FutureProviderRef<PriceComparisonModel?> {
  /// The parameter `priceComparisonDto` of this provider.
  PriceComparisonDto get priceComparisonDto;
}

class _PriceComparisonProviderElement
    extends FutureProviderElement<PriceComparisonModel?>
    with PriceComparisonRef {
  _PriceComparisonProviderElement(super.provider);

  @override
  PriceComparisonDto get priceComparisonDto =>
      (origin as PriceComparisonProvider).priceComparisonDto;
}

String _$analyticsDataHash() => r'7a57c6bcaf6c94b12c885fe4e95e14c56ea9a41e';

/// See also [analyticsData].
@ProviderFor(analyticsData)
const analyticsDataProvider = AnalyticsDataFamily();

/// See also [analyticsData].
class AnalyticsDataFamily extends Family<AsyncValue<AnalystRatingResponse?>> {
  /// See also [analyticsData].
  const AnalyticsDataFamily();

  /// See also [analyticsData].
  AnalyticsDataProvider call(SymbolDto symbol) {
    return AnalyticsDataProvider(symbol);
  }

  @override
  AnalyticsDataProvider getProviderOverride(
    covariant AnalyticsDataProvider provider,
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
  String? get name => r'analyticsDataProvider';
}

/// See also [analyticsData].
class AnalyticsDataProvider extends FutureProvider<AnalystRatingResponse?> {
  /// See also [analyticsData].
  AnalyticsDataProvider(SymbolDto symbol)
    : this._internal(
        (ref) => analyticsData(ref as AnalyticsDataRef, symbol),
        from: analyticsDataProvider,
        name: r'analyticsDataProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$analyticsDataHash,
        dependencies: AnalyticsDataFamily._dependencies,
        allTransitiveDependencies:
            AnalyticsDataFamily._allTransitiveDependencies,
        symbol: symbol,
      );

  AnalyticsDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.symbol,
  }) : super.internal();

  final SymbolDto symbol;

  @override
  Override overrideWith(
    FutureOr<AnalystRatingResponse?> Function(AnalyticsDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AnalyticsDataProvider._internal(
        (ref) => create(ref as AnalyticsDataRef),
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
  FutureProviderElement<AnalystRatingResponse?> createElement() {
    return _AnalyticsDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AnalyticsDataProvider && other.symbol == symbol;
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
mixin AnalyticsDataRef on FutureProviderRef<AnalystRatingResponse?> {
  /// The parameter `symbol` of this provider.
  SymbolDto get symbol;
}

class _AnalyticsDataProviderElement
    extends FutureProviderElement<AnalystRatingResponse?>
    with AnalyticsDataRef {
  _AnalyticsDataProviderElement(super.provider);

  @override
  SymbolDto get symbol => (origin as AnalyticsDataProvider).symbol;
}

String _$companyDetailHash() => r'08fa51ae2cdf67f99e2c6499704a7ecbbd4ba88b';

/// See also [companyDetail].
@ProviderFor(companyDetail)
const companyDetailProvider = CompanyDetailFamily();

/// See also [companyDetail].
class CompanyDetailFamily extends Family<AsyncValue<CompanyDetailModel?>> {
  /// See also [companyDetail].
  const CompanyDetailFamily();

  /// See also [companyDetail].
  CompanyDetailProvider call(SymbolDto symbol) {
    return CompanyDetailProvider(symbol);
  }

  @override
  CompanyDetailProvider getProviderOverride(
    covariant CompanyDetailProvider provider,
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
  String? get name => r'companyDetailProvider';
}

/// See also [companyDetail].
class CompanyDetailProvider extends FutureProvider<CompanyDetailModel?> {
  /// See also [companyDetail].
  CompanyDetailProvider(SymbolDto symbol)
    : this._internal(
        (ref) => companyDetail(ref as CompanyDetailRef, symbol),
        from: companyDetailProvider,
        name: r'companyDetailProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$companyDetailHash,
        dependencies: CompanyDetailFamily._dependencies,
        allTransitiveDependencies:
            CompanyDetailFamily._allTransitiveDependencies,
        symbol: symbol,
      );

  CompanyDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.symbol,
  }) : super.internal();

  final SymbolDto symbol;

  @override
  Override overrideWith(
    FutureOr<CompanyDetailModel?> Function(CompanyDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CompanyDetailProvider._internal(
        (ref) => create(ref as CompanyDetailRef),
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
  FutureProviderElement<CompanyDetailModel?> createElement() {
    return _CompanyDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CompanyDetailProvider && other.symbol == symbol;
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
mixin CompanyDetailRef on FutureProviderRef<CompanyDetailModel?> {
  /// The parameter `symbol` of this provider.
  SymbolDto get symbol;
}

class _CompanyDetailProviderElement
    extends FutureProviderElement<CompanyDetailModel?>
    with CompanyDetailRef {
  _CompanyDetailProviderElement(super.provider);

  @override
  SymbolDto get symbol => (origin as CompanyDetailProvider).symbol;
}

String _$earningsDataHash() => r'7b573e7927ad803ec7fcd7de34cdda9870b8eb7f';

/// See also [earningsData].
@ProviderFor(earningsData)
const earningsDataProvider = EarningsDataFamily();

/// See also [earningsData].
class EarningsDataFamily extends Family<AsyncValue<EarningsModel?>> {
  /// See also [earningsData].
  const EarningsDataFamily();

  /// See also [earningsData].
  EarningsDataProvider call(SymbolDto symbol) {
    return EarningsDataProvider(symbol);
  }

  @override
  EarningsDataProvider getProviderOverride(
    covariant EarningsDataProvider provider,
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
  String? get name => r'earningsDataProvider';
}

/// See also [earningsData].
class EarningsDataProvider extends FutureProvider<EarningsModel?> {
  /// See also [earningsData].
  EarningsDataProvider(SymbolDto symbol)
    : this._internal(
        (ref) => earningsData(ref as EarningsDataRef, symbol),
        from: earningsDataProvider,
        name: r'earningsDataProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$earningsDataHash,
        dependencies: EarningsDataFamily._dependencies,
        allTransitiveDependencies:
            EarningsDataFamily._allTransitiveDependencies,
        symbol: symbol,
      );

  EarningsDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.symbol,
  }) : super.internal();

  final SymbolDto symbol;

  @override
  Override overrideWith(
    FutureOr<EarningsModel?> Function(EarningsDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: EarningsDataProvider._internal(
        (ref) => create(ref as EarningsDataRef),
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
  FutureProviderElement<EarningsModel?> createElement() {
    return _EarningsDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EarningsDataProvider && other.symbol == symbol;
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
mixin EarningsDataRef on FutureProviderRef<EarningsModel?> {
  /// The parameter `symbol` of this provider.
  SymbolDto get symbol;
}

class _EarningsDataProviderElement extends FutureProviderElement<EarningsModel?>
    with EarningsDataRef {
  _EarningsDataProviderElement(super.provider);

  @override
  SymbolDto get symbol => (origin as EarningsDataProvider).symbol;
}

String _$esgScoreHash() => r'62f59aa8a19412bb698c587dc15b19d4c4c858e2';

/// See also [esgScore].
@ProviderFor(esgScore)
const esgScoreProvider = EsgScoreFamily();

/// See also [esgScore].
class EsgScoreFamily extends Family<AsyncValue<EsgScoreModel?>> {
  /// See also [esgScore].
  const EsgScoreFamily();

  /// See also [esgScore].
  EsgScoreProvider call(String symbol) {
    return EsgScoreProvider(symbol);
  }

  @override
  EsgScoreProvider getProviderOverride(covariant EsgScoreProvider provider) {
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
  String? get name => r'esgScoreProvider';
}

/// See also [esgScore].
class EsgScoreProvider extends FutureProvider<EsgScoreModel?> {
  /// See also [esgScore].
  EsgScoreProvider(String symbol)
    : this._internal(
        (ref) => esgScore(ref as EsgScoreRef, symbol),
        from: esgScoreProvider,
        name: r'esgScoreProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$esgScoreHash,
        dependencies: EsgScoreFamily._dependencies,
        allTransitiveDependencies: EsgScoreFamily._allTransitiveDependencies,
        symbol: symbol,
      );

  EsgScoreProvider._internal(
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
    FutureOr<EsgScoreModel?> Function(EsgScoreRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: EsgScoreProvider._internal(
        (ref) => create(ref as EsgScoreRef),
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
  FutureProviderElement<EsgScoreModel?> createElement() {
    return _EsgScoreProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EsgScoreProvider && other.symbol == symbol;
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
mixin EsgScoreRef on FutureProviderRef<EsgScoreModel?> {
  /// The parameter `symbol` of this provider.
  String get symbol;
}

class _EsgScoreProviderElement extends FutureProviderElement<EsgScoreModel?>
    with EsgScoreRef {
  _EsgScoreProviderElement(super.provider);

  @override
  String get symbol => (origin as EsgScoreProvider).symbol;
}

String _$insiderTradesHash() => r'6c3b78b273a9284b0e0c10be19d9313421472d79';

/// See also [insiderTrades].
@ProviderFor(insiderTrades)
const insiderTradesProvider = InsiderTradesFamily();

/// See also [insiderTrades].
class InsiderTradesFamily
    extends Family<AsyncValue<InsiderTransactionResponse?>> {
  /// See also [insiderTrades].
  const InsiderTradesFamily();

  /// See also [insiderTrades].
  InsiderTradesProvider call(SymbolDto symbol) {
    return InsiderTradesProvider(symbol);
  }

  @override
  InsiderTradesProvider getProviderOverride(
    covariant InsiderTradesProvider provider,
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
  String? get name => r'insiderTradesProvider';
}

/// See also [insiderTrades].
class InsiderTradesProvider
    extends FutureProvider<InsiderTransactionResponse?> {
  /// See also [insiderTrades].
  InsiderTradesProvider(SymbolDto symbol)
    : this._internal(
        (ref) => insiderTrades(ref as InsiderTradesRef, symbol),
        from: insiderTradesProvider,
        name: r'insiderTradesProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$insiderTradesHash,
        dependencies: InsiderTradesFamily._dependencies,
        allTransitiveDependencies:
            InsiderTradesFamily._allTransitiveDependencies,
        symbol: symbol,
      );

  InsiderTradesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.symbol,
  }) : super.internal();

  final SymbolDto symbol;

  @override
  Override overrideWith(
    FutureOr<InsiderTransactionResponse?> Function(InsiderTradesRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: InsiderTradesProvider._internal(
        (ref) => create(ref as InsiderTradesRef),
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
  FutureProviderElement<InsiderTransactionResponse?> createElement() {
    return _InsiderTradesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InsiderTradesProvider && other.symbol == symbol;
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
mixin InsiderTradesRef on FutureProviderRef<InsiderTransactionResponse?> {
  /// The parameter `symbol` of this provider.
  SymbolDto get symbol;
}

class _InsiderTradesProviderElement
    extends FutureProviderElement<InsiderTransactionResponse?>
    with InsiderTradesRef {
  _InsiderTradesProviderElement(super.provider);

  @override
  SymbolDto get symbol => (origin as InsiderTradesProvider).symbol;
}

String _$shortVolumeDataHash() => r'8c61113c1a8ba7c3ae6b7644242cb6af27f40e71';

/// See also [shortVolumeData].
@ProviderFor(shortVolumeData)
const shortVolumeDataProvider = ShortVolumeDataFamily();

/// See also [shortVolumeData].
class ShortVolumeDataFamily extends Family<AsyncValue<ShortVolumeModel?>> {
  /// See also [shortVolumeData].
  const ShortVolumeDataFamily();

  /// See also [shortVolumeData].
  ShortVolumeDataProvider call(SymbolDto symbol) {
    return ShortVolumeDataProvider(symbol);
  }

  @override
  ShortVolumeDataProvider getProviderOverride(
    covariant ShortVolumeDataProvider provider,
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
  String? get name => r'shortVolumeDataProvider';
}

/// See also [shortVolumeData].
class ShortVolumeDataProvider extends FutureProvider<ShortVolumeModel?> {
  /// See also [shortVolumeData].
  ShortVolumeDataProvider(SymbolDto symbol)
    : this._internal(
        (ref) => shortVolumeData(ref as ShortVolumeDataRef, symbol),
        from: shortVolumeDataProvider,
        name: r'shortVolumeDataProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$shortVolumeDataHash,
        dependencies: ShortVolumeDataFamily._dependencies,
        allTransitiveDependencies:
            ShortVolumeDataFamily._allTransitiveDependencies,
        symbol: symbol,
      );

  ShortVolumeDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.symbol,
  }) : super.internal();

  final SymbolDto symbol;

  @override
  Override overrideWith(
    FutureOr<ShortVolumeModel?> Function(ShortVolumeDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ShortVolumeDataProvider._internal(
        (ref) => create(ref as ShortVolumeDataRef),
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
  FutureProviderElement<ShortVolumeModel?> createElement() {
    return _ShortVolumeDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ShortVolumeDataProvider && other.symbol == symbol;
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
mixin ShortVolumeDataRef on FutureProviderRef<ShortVolumeModel?> {
  /// The parameter `symbol` of this provider.
  SymbolDto get symbol;
}

class _ShortVolumeDataProviderElement
    extends FutureProviderElement<ShortVolumeModel?>
    with ShortVolumeDataRef {
  _ShortVolumeDataProviderElement(super.provider);

  @override
  SymbolDto get symbol => (origin as ShortVolumeDataProvider).symbol;
}

String _$securityShortVolumeHash() =>
    r'31b86fcdd618d1cfd3ff7f527deb9b4cc8d9625e';

/// See also [securityShortVolume].
@ProviderFor(securityShortVolume)
const securityShortVolumeProvider = SecurityShortVolumeFamily();

/// See also [securityShortVolume].
class SecurityShortVolumeFamily
    extends Family<AsyncValue<ShortSecurityResponse?>> {
  /// See also [securityShortVolume].
  const SecurityShortVolumeFamily();

  /// See also [securityShortVolume].
  SecurityShortVolumeProvider call(SymbolDto symbol) {
    return SecurityShortVolumeProvider(symbol);
  }

  @override
  SecurityShortVolumeProvider getProviderOverride(
    covariant SecurityShortVolumeProvider provider,
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
  String? get name => r'securityShortVolumeProvider';
}

/// See also [securityShortVolume].
class SecurityShortVolumeProvider
    extends FutureProvider<ShortSecurityResponse?> {
  /// See also [securityShortVolume].
  SecurityShortVolumeProvider(SymbolDto symbol)
    : this._internal(
        (ref) => securityShortVolume(ref as SecurityShortVolumeRef, symbol),
        from: securityShortVolumeProvider,
        name: r'securityShortVolumeProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$securityShortVolumeHash,
        dependencies: SecurityShortVolumeFamily._dependencies,
        allTransitiveDependencies:
            SecurityShortVolumeFamily._allTransitiveDependencies,
        symbol: symbol,
      );

  SecurityShortVolumeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.symbol,
  }) : super.internal();

  final SymbolDto symbol;

  @override
  Override overrideWith(
    FutureOr<ShortSecurityResponse?> Function(SecurityShortVolumeRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SecurityShortVolumeProvider._internal(
        (ref) => create(ref as SecurityShortVolumeRef),
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
  FutureProviderElement<ShortSecurityResponse?> createElement() {
    return _SecurityShortVolumeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SecurityShortVolumeProvider && other.symbol == symbol;
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
mixin SecurityShortVolumeRef on FutureProviderRef<ShortSecurityResponse?> {
  /// The parameter `symbol` of this provider.
  SymbolDto get symbol;
}

class _SecurityShortVolumeProviderElement
    extends FutureProviderElement<ShortSecurityResponse?>
    with SecurityShortVolumeRef {
  _SecurityShortVolumeProviderElement(super.provider);

  @override
  SymbolDto get symbol => (origin as SecurityShortVolumeProvider).symbol;
}

String _$shortOwnershipHash() => r'5a3e973b372a6c0e5faf52954430731a9dff182f';

/// See also [shortOwnership].
@ProviderFor(shortOwnership)
const shortOwnershipProvider = ShortOwnershipFamily();

/// See also [shortOwnership].
class ShortOwnershipFamily
    extends Family<AsyncValue<SecurityOwnershipResponse?>> {
  /// See also [shortOwnership].
  const ShortOwnershipFamily();

  /// See also [shortOwnership].
  ShortOwnershipProvider call(SymbolDto symbol) {
    return ShortOwnershipProvider(symbol);
  }

  @override
  ShortOwnershipProvider getProviderOverride(
    covariant ShortOwnershipProvider provider,
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
  String? get name => r'shortOwnershipProvider';
}

/// See also [shortOwnership].
class ShortOwnershipProvider
    extends FutureProvider<SecurityOwnershipResponse?> {
  /// See also [shortOwnership].
  ShortOwnershipProvider(SymbolDto symbol)
    : this._internal(
        (ref) => shortOwnership(ref as ShortOwnershipRef, symbol),
        from: shortOwnershipProvider,
        name: r'shortOwnershipProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$shortOwnershipHash,
        dependencies: ShortOwnershipFamily._dependencies,
        allTransitiveDependencies:
            ShortOwnershipFamily._allTransitiveDependencies,
        symbol: symbol,
      );

  ShortOwnershipProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.symbol,
  }) : super.internal();

  final SymbolDto symbol;

  @override
  Override overrideWith(
    FutureOr<SecurityOwnershipResponse?> Function(ShortOwnershipRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ShortOwnershipProvider._internal(
        (ref) => create(ref as ShortOwnershipRef),
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
  FutureProviderElement<SecurityOwnershipResponse?> createElement() {
    return _ShortOwnershipProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ShortOwnershipProvider && other.symbol == symbol;
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
mixin ShortOwnershipRef on FutureProviderRef<SecurityOwnershipResponse?> {
  /// The parameter `symbol` of this provider.
  SymbolDto get symbol;
}

class _ShortOwnershipProviderElement
    extends FutureProviderElement<SecurityOwnershipResponse?>
    with ShortOwnershipRef {
  _ShortOwnershipProviderElement(super.provider);

  @override
  SymbolDto get symbol => (origin as ShortOwnershipProvider).symbol;
}

String _$companyDataHash() => r'd55046d4787391a42427ec6278f721eeaf8395e3';

/// See also [companyData].
@ProviderFor(companyData)
const companyDataProvider = CompanyDataFamily();

/// See also [companyData].
class CompanyDataFamily extends Family<AsyncValue<CompanyModel?>> {
  /// See also [companyData].
  const CompanyDataFamily();

  /// See also [companyData].
  CompanyDataProvider call(SymbolDto symbol) {
    return CompanyDataProvider(symbol);
  }

  @override
  CompanyDataProvider getProviderOverride(
    covariant CompanyDataProvider provider,
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
  String? get name => r'companyDataProvider';
}

/// See also [companyData].
class CompanyDataProvider extends FutureProvider<CompanyModel?> {
  /// See also [companyData].
  CompanyDataProvider(SymbolDto symbol)
    : this._internal(
        (ref) => companyData(ref as CompanyDataRef, symbol),
        from: companyDataProvider,
        name: r'companyDataProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$companyDataHash,
        dependencies: CompanyDataFamily._dependencies,
        allTransitiveDependencies: CompanyDataFamily._allTransitiveDependencies,
        symbol: symbol,
      );

  CompanyDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.symbol,
  }) : super.internal();

  final SymbolDto symbol;

  @override
  Override overrideWith(
    FutureOr<CompanyModel?> Function(CompanyDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CompanyDataProvider._internal(
        (ref) => create(ref as CompanyDataRef),
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
  FutureProviderElement<CompanyModel?> createElement() {
    return _CompanyDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CompanyDataProvider && other.symbol == symbol;
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
mixin CompanyDataRef on FutureProviderRef<CompanyModel?> {
  /// The parameter `symbol` of this provider.
  SymbolDto get symbol;
}

class _CompanyDataProviderElement extends FutureProviderElement<CompanyModel?>
    with CompanyDataRef {
  _CompanyDataProviderElement(super.provider);

  @override
  SymbolDto get symbol => (origin as CompanyDataProvider).symbol;
}

String _$financialChartsHash() => r'19a8bbba400bab03f9e442e5d061bfa5bc4092f5';

/// See also [financialCharts].
@ProviderFor(financialCharts)
const financialChartsProvider = FinancialChartsFamily();

/// See also [financialCharts].
class FinancialChartsFamily extends Family<AsyncValue<FinanceDataResponse?>> {
  /// See also [financialCharts].
  const FinancialChartsFamily();

  /// See also [financialCharts].
  FinancialChartsProvider call(SymbolDto symbol) {
    return FinancialChartsProvider(symbol);
  }

  @override
  FinancialChartsProvider getProviderOverride(
    covariant FinancialChartsProvider provider,
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
  String? get name => r'financialChartsProvider';
}

/// See also [financialCharts].
class FinancialChartsProvider extends FutureProvider<FinanceDataResponse?> {
  /// See also [financialCharts].
  FinancialChartsProvider(SymbolDto symbol)
    : this._internal(
        (ref) => financialCharts(ref as FinancialChartsRef, symbol),
        from: financialChartsProvider,
        name: r'financialChartsProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$financialChartsHash,
        dependencies: FinancialChartsFamily._dependencies,
        allTransitiveDependencies:
            FinancialChartsFamily._allTransitiveDependencies,
        symbol: symbol,
      );

  FinancialChartsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.symbol,
  }) : super.internal();

  final SymbolDto symbol;

  @override
  Override overrideWith(
    FutureOr<FinanceDataResponse?> Function(FinancialChartsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FinancialChartsProvider._internal(
        (ref) => create(ref as FinancialChartsRef),
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
  FutureProviderElement<FinanceDataResponse?> createElement() {
    return _FinancialChartsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FinancialChartsProvider && other.symbol == symbol;
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
mixin FinancialChartsRef on FutureProviderRef<FinanceDataResponse?> {
  /// The parameter `symbol` of this provider.
  SymbolDto get symbol;
}

class _FinancialChartsProviderElement
    extends FutureProviderElement<FinanceDataResponse?>
    with FinancialChartsRef {
  _FinancialChartsProviderElement(super.provider);

  @override
  SymbolDto get symbol => (origin as FinancialChartsProvider).symbol;
}

String _$financialDataHash() => r'fe842593abc195798eeca450772bf2387a3ab373';

/// See also [financialData].
@ProviderFor(financialData)
const financialDataProvider = FinancialDataFamily();

/// See also [financialData].
class FinancialDataFamily extends Family<AsyncValue<FinancialResponse?>> {
  /// See also [financialData].
  const FinancialDataFamily();

  /// See also [financialData].
  FinancialDataProvider call(PriceRequestDto overview) {
    return FinancialDataProvider(overview);
  }

  @override
  FinancialDataProvider getProviderOverride(
    covariant FinancialDataProvider provider,
  ) {
    return call(provider.overview);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'financialDataProvider';
}

/// See also [financialData].
class FinancialDataProvider extends FutureProvider<FinancialResponse?> {
  /// See also [financialData].
  FinancialDataProvider(PriceRequestDto overview)
    : this._internal(
        (ref) => financialData(ref as FinancialDataRef, overview),
        from: financialDataProvider,
        name: r'financialDataProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$financialDataHash,
        dependencies: FinancialDataFamily._dependencies,
        allTransitiveDependencies:
            FinancialDataFamily._allTransitiveDependencies,
        overview: overview,
      );

  FinancialDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.overview,
  }) : super.internal();

  final PriceRequestDto overview;

  @override
  Override overrideWith(
    FutureOr<FinancialResponse?> Function(FinancialDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FinancialDataProvider._internal(
        (ref) => create(ref as FinancialDataRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        overview: overview,
      ),
    );
  }

  @override
  FutureProviderElement<FinancialResponse?> createElement() {
    return _FinancialDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FinancialDataProvider && other.overview == overview;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, overview.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FinancialDataRef on FutureProviderRef<FinancialResponse?> {
  /// The parameter `overview` of this provider.
  PriceRequestDto get overview;
}

class _FinancialDataProviderElement
    extends FutureProviderElement<FinancialResponse?>
    with FinancialDataRef {
  _FinancialDataProviderElement(super.provider);

  @override
  PriceRequestDto get overview => (origin as FinancialDataProvider).overview;
}

String _$earningChartDataHash() => r'ce261a2e74eaa424146a6216d979a12d02e57ddb';

/// See also [earningChartData].
@ProviderFor(earningChartData)
const earningChartDataProvider = EarningChartDataFamily();

/// See also [earningChartData].
class EarningChartDataFamily extends Family<AsyncValue<EarningChartModel?>> {
  /// See also [earningChartData].
  const EarningChartDataFamily();

  /// See also [earningChartData].
  EarningChartDataProvider call(ChartRequestDto overview) {
    return EarningChartDataProvider(overview);
  }

  @override
  EarningChartDataProvider getProviderOverride(
    covariant EarningChartDataProvider provider,
  ) {
    return call(provider.overview);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'earningChartDataProvider';
}

/// See also [earningChartData].
class EarningChartDataProvider extends FutureProvider<EarningChartModel?> {
  /// See also [earningChartData].
  EarningChartDataProvider(ChartRequestDto overview)
    : this._internal(
        (ref) => earningChartData(ref as EarningChartDataRef, overview),
        from: earningChartDataProvider,
        name: r'earningChartDataProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$earningChartDataHash,
        dependencies: EarningChartDataFamily._dependencies,
        allTransitiveDependencies:
            EarningChartDataFamily._allTransitiveDependencies,
        overview: overview,
      );

  EarningChartDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.overview,
  }) : super.internal();

  final ChartRequestDto overview;

  @override
  Override overrideWith(
    FutureOr<EarningChartModel?> Function(EarningChartDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: EarningChartDataProvider._internal(
        (ref) => create(ref as EarningChartDataRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        overview: overview,
      ),
    );
  }

  @override
  FutureProviderElement<EarningChartModel?> createElement() {
    return _EarningChartDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EarningChartDataProvider && other.overview == overview;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, overview.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin EarningChartDataRef on FutureProviderRef<EarningChartModel?> {
  /// The parameter `overview` of this provider.
  ChartRequestDto get overview;
}

class _EarningChartDataProviderElement
    extends FutureProviderElement<EarningChartModel?>
    with EarningChartDataRef {
  _EarningChartDataProviderElement(super.provider);

  @override
  ChartRequestDto get overview => (origin as EarningChartDataProvider).overview;
}

String _$earningReportDataHash() => r'f75db866a4a8d43e8de52d596ea3eaa86163ca63';

/// See also [earningReportData].
@ProviderFor(earningReportData)
const earningReportDataProvider = EarningReportDataFamily();

/// See also [earningReportData].
class EarningReportDataFamily extends Family<AsyncValue<EarningReportsModel?>> {
  /// See also [earningReportData].
  const EarningReportDataFamily();

  /// See also [earningReportData].
  EarningReportDataProvider call(ChartRequestDto overview) {
    return EarningReportDataProvider(overview);
  }

  @override
  EarningReportDataProvider getProviderOverride(
    covariant EarningReportDataProvider provider,
  ) {
    return call(provider.overview);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'earningReportDataProvider';
}

/// See also [earningReportData].
class EarningReportDataProvider extends FutureProvider<EarningReportsModel?> {
  /// See also [earningReportData].
  EarningReportDataProvider(ChartRequestDto overview)
    : this._internal(
        (ref) => earningReportData(ref as EarningReportDataRef, overview),
        from: earningReportDataProvider,
        name: r'earningReportDataProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$earningReportDataHash,
        dependencies: EarningReportDataFamily._dependencies,
        allTransitiveDependencies:
            EarningReportDataFamily._allTransitiveDependencies,
        overview: overview,
      );

  EarningReportDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.overview,
  }) : super.internal();

  final ChartRequestDto overview;

  @override
  Override overrideWith(
    FutureOr<EarningReportsModel?> Function(EarningReportDataRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: EarningReportDataProvider._internal(
        (ref) => create(ref as EarningReportDataRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        overview: overview,
      ),
    );
  }

  @override
  FutureProviderElement<EarningReportsModel?> createElement() {
    return _EarningReportDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EarningReportDataProvider && other.overview == overview;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, overview.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin EarningReportDataRef on FutureProviderRef<EarningReportsModel?> {
  /// The parameter `overview` of this provider.
  ChartRequestDto get overview;
}

class _EarningReportDataProviderElement
    extends FutureProviderElement<EarningReportsModel?>
    with EarningReportDataRef {
  _EarningReportDataProviderElement(super.provider);

  @override
  ChartRequestDto get overview =>
      (origin as EarningReportDataProvider).overview;
}

String _$analysisDataHash() => r'f1db876a98b87cfc39b64016f8f0fbd7b9e5effc';

/// See also [analysisData].
@ProviderFor(analysisData)
const analysisDataProvider = AnalysisDataFamily();

/// See also [analysisData].
class AnalysisDataFamily extends Family<AsyncValue<AnalysisDataModel?>> {
  /// See also [analysisData].
  const AnalysisDataFamily();

  /// See also [analysisData].
  AnalysisDataProvider call(ChartRequestDto overview) {
    return AnalysisDataProvider(overview);
  }

  @override
  AnalysisDataProvider getProviderOverride(
    covariant AnalysisDataProvider provider,
  ) {
    return call(provider.overview);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'analysisDataProvider';
}

/// See also [analysisData].
class AnalysisDataProvider extends FutureProvider<AnalysisDataModel?> {
  /// See also [analysisData].
  AnalysisDataProvider(ChartRequestDto overview)
    : this._internal(
        (ref) => analysisData(ref as AnalysisDataRef, overview),
        from: analysisDataProvider,
        name: r'analysisDataProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$analysisDataHash,
        dependencies: AnalysisDataFamily._dependencies,
        allTransitiveDependencies:
            AnalysisDataFamily._allTransitiveDependencies,
        overview: overview,
      );

  AnalysisDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.overview,
  }) : super.internal();

  final ChartRequestDto overview;

  @override
  Override overrideWith(
    FutureOr<AnalysisDataModel?> Function(AnalysisDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AnalysisDataProvider._internal(
        (ref) => create(ref as AnalysisDataRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        overview: overview,
      ),
    );
  }

  @override
  FutureProviderElement<AnalysisDataModel?> createElement() {
    return _AnalysisDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AnalysisDataProvider && other.overview == overview;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, overview.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AnalysisDataRef on FutureProviderRef<AnalysisDataModel?> {
  /// The parameter `overview` of this provider.
  ChartRequestDto get overview;
}

class _AnalysisDataProviderElement
    extends FutureProviderElement<AnalysisDataModel?>
    with AnalysisDataRef {
  _AnalysisDataProviderElement(super.provider);

  @override
  ChartRequestDto get overview => (origin as AnalysisDataProvider).overview;
}

String _$highlightsTopHash() => r'08b8617fc72037cfa063296343b7fa625aa737ef';

/// See also [highlightsTop].
@ProviderFor(highlightsTop)
const highlightsTopProvider = HighlightsTopFamily();

/// See also [highlightsTop].
class HighlightsTopFamily extends Family<AsyncValue<HighlightResponse?>> {
  /// See also [highlightsTop].
  const HighlightsTopFamily();

  /// See also [highlightsTop].
  HighlightsTopProvider call(HighlightRequest highlightRequest) {
    return HighlightsTopProvider(highlightRequest);
  }

  @override
  HighlightsTopProvider getProviderOverride(
    covariant HighlightsTopProvider provider,
  ) {
    return call(provider.highlightRequest);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'highlightsTopProvider';
}

/// See also [highlightsTop].
class HighlightsTopProvider extends FutureProvider<HighlightResponse?> {
  /// See also [highlightsTop].
  HighlightsTopProvider(HighlightRequest highlightRequest)
    : this._internal(
        (ref) => highlightsTop(ref as HighlightsTopRef, highlightRequest),
        from: highlightsTopProvider,
        name: r'highlightsTopProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$highlightsTopHash,
        dependencies: HighlightsTopFamily._dependencies,
        allTransitiveDependencies:
            HighlightsTopFamily._allTransitiveDependencies,
        highlightRequest: highlightRequest,
      );

  HighlightsTopProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.highlightRequest,
  }) : super.internal();

  final HighlightRequest highlightRequest;

  @override
  Override overrideWith(
    FutureOr<HighlightResponse?> Function(HighlightsTopRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: HighlightsTopProvider._internal(
        (ref) => create(ref as HighlightsTopRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        highlightRequest: highlightRequest,
      ),
    );
  }

  @override
  FutureProviderElement<HighlightResponse?> createElement() {
    return _HighlightsTopProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HighlightsTopProvider &&
        other.highlightRequest == highlightRequest;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, highlightRequest.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin HighlightsTopRef on FutureProviderRef<HighlightResponse?> {
  /// The parameter `highlightRequest` of this provider.
  HighlightRequest get highlightRequest;
}

class _HighlightsTopProviderElement
    extends FutureProviderElement<HighlightResponse?>
    with HighlightsTopRef {
  _HighlightsTopProviderElement(super.provider);

  @override
  HighlightRequest get highlightRequest =>
      (origin as HighlightsTopProvider).highlightRequest;
}

String _$marketCapChartHash() => r'fe6bde66e13ef5595457c677755905a7201aa271';

/// See also [marketCapChart].
@ProviderFor(marketCapChart)
const marketCapChartProvider = MarketCapChartFamily();

/// See also [marketCapChart].
class MarketCapChartFamily extends Family<AsyncValue<MarketCapResponse?>> {
  /// See also [marketCapChart].
  const MarketCapChartFamily();

  /// See also [marketCapChart].
  MarketCapChartProvider call(MarketCapRequest symbol) {
    return MarketCapChartProvider(symbol);
  }

  @override
  MarketCapChartProvider getProviderOverride(
    covariant MarketCapChartProvider provider,
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
  String? get name => r'marketCapChartProvider';
}

/// See also [marketCapChart].
class MarketCapChartProvider extends FutureProvider<MarketCapResponse?> {
  /// See also [marketCapChart].
  MarketCapChartProvider(MarketCapRequest symbol)
    : this._internal(
        (ref) => marketCapChart(ref as MarketCapChartRef, symbol),
        from: marketCapChartProvider,
        name: r'marketCapChartProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$marketCapChartHash,
        dependencies: MarketCapChartFamily._dependencies,
        allTransitiveDependencies:
            MarketCapChartFamily._allTransitiveDependencies,
        symbol: symbol,
      );

  MarketCapChartProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.symbol,
  }) : super.internal();

  final MarketCapRequest symbol;

  @override
  Override overrideWith(
    FutureOr<MarketCapResponse?> Function(MarketCapChartRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MarketCapChartProvider._internal(
        (ref) => create(ref as MarketCapChartRef),
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
  FutureProviderElement<MarketCapResponse?> createElement() {
    return _MarketCapChartProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MarketCapChartProvider && other.symbol == symbol;
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
mixin MarketCapChartRef on FutureProviderRef<MarketCapResponse?> {
  /// The parameter `symbol` of this provider.
  MarketCapRequest get symbol;
}

class _MarketCapChartProviderElement
    extends FutureProviderElement<MarketCapResponse?>
    with MarketCapChartRef {
  _MarketCapChartProviderElement(super.provider);

  @override
  MarketCapRequest get symbol => (origin as MarketCapChartProvider).symbol;
}

String _$cryptoMarketsHash() => r'1b523a1386183b45707fcc07a06004e8e7bb4747';

/// See also [cryptoMarkets].
@ProviderFor(cryptoMarkets)
const cryptoMarketsProvider = CryptoMarketsFamily();

/// See also [cryptoMarkets].
class CryptoMarketsFamily extends Family<AsyncValue<CryptoMarketModel?>> {
  /// See also [cryptoMarkets].
  const CryptoMarketsFamily();

  /// See also [cryptoMarkets].
  CryptoMarketsProvider call(SymbolDto symbol) {
    return CryptoMarketsProvider(symbol);
  }

  @override
  CryptoMarketsProvider getProviderOverride(
    covariant CryptoMarketsProvider provider,
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
  String? get name => r'cryptoMarketsProvider';
}

/// See also [cryptoMarkets].
class CryptoMarketsProvider extends FutureProvider<CryptoMarketModel?> {
  /// See also [cryptoMarkets].
  CryptoMarketsProvider(SymbolDto symbol)
    : this._internal(
        (ref) => cryptoMarkets(ref as CryptoMarketsRef, symbol),
        from: cryptoMarketsProvider,
        name: r'cryptoMarketsProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$cryptoMarketsHash,
        dependencies: CryptoMarketsFamily._dependencies,
        allTransitiveDependencies:
            CryptoMarketsFamily._allTransitiveDependencies,
        symbol: symbol,
      );

  CryptoMarketsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.symbol,
  }) : super.internal();

  final SymbolDto symbol;

  @override
  Override overrideWith(
    FutureOr<CryptoMarketModel?> Function(CryptoMarketsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CryptoMarketsProvider._internal(
        (ref) => create(ref as CryptoMarketsRef),
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
  FutureProviderElement<CryptoMarketModel?> createElement() {
    return _CryptoMarketsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CryptoMarketsProvider && other.symbol == symbol;
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
mixin CryptoMarketsRef on FutureProviderRef<CryptoMarketModel?> {
  /// The parameter `symbol` of this provider.
  SymbolDto get symbol;
}

class _CryptoMarketsProviderElement
    extends FutureProviderElement<CryptoMarketModel?>
    with CryptoMarketsRef {
  _CryptoMarketsProviderElement(super.provider);

  @override
  SymbolDto get symbol => (origin as CryptoMarketsProvider).symbol;
}

String _$priceRatioHash() => r'565cac3ffd2832575f1aaaa6c0b3909fe7b630f5';

/// See also [priceRatio].
@ProviderFor(priceRatio)
const priceRatioProvider = PriceRatioFamily();

/// See also [priceRatio].
class PriceRatioFamily extends Family<AsyncValue<PriceComparisonModel?>> {
  /// See also [priceRatio].
  const PriceRatioFamily();

  /// See also [priceRatio].
  PriceRatioProvider call(PriceComparisonDto symbol) {
    return PriceRatioProvider(symbol);
  }

  @override
  PriceRatioProvider getProviderOverride(
    covariant PriceRatioProvider provider,
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
  String? get name => r'priceRatioProvider';
}

/// See also [priceRatio].
class PriceRatioProvider extends FutureProvider<PriceComparisonModel?> {
  /// See also [priceRatio].
  PriceRatioProvider(PriceComparisonDto symbol)
    : this._internal(
        (ref) => priceRatio(ref as PriceRatioRef, symbol),
        from: priceRatioProvider,
        name: r'priceRatioProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$priceRatioHash,
        dependencies: PriceRatioFamily._dependencies,
        allTransitiveDependencies: PriceRatioFamily._allTransitiveDependencies,
        symbol: symbol,
      );

  PriceRatioProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.symbol,
  }) : super.internal();

  final PriceComparisonDto symbol;

  @override
  Override overrideWith(
    FutureOr<PriceComparisonModel?> Function(PriceRatioRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PriceRatioProvider._internal(
        (ref) => create(ref as PriceRatioRef),
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
  FutureProviderElement<PriceComparisonModel?> createElement() {
    return _PriceRatioProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PriceRatioProvider && other.symbol == symbol;
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
mixin PriceRatioRef on FutureProviderRef<PriceComparisonModel?> {
  /// The parameter `symbol` of this provider.
  PriceComparisonDto get symbol;
}

class _PriceRatioProviderElement
    extends FutureProviderElement<PriceComparisonModel?>
    with PriceRatioRef {
  _PriceRatioProviderElement(super.provider);

  @override
  PriceComparisonDto get symbol => (origin as PriceRatioProvider).symbol;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
