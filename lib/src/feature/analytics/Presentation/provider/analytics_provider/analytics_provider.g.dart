// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getOverviewHash() => r'0afa0dc84af827b1d217acd52d26f186e2e48fe2';

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
class GetOverviewProvider extends AutoDisposeFutureProvider<OverviewData?> {
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
  AutoDisposeFutureProviderElement<OverviewData?> createElement() {
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
mixin GetOverviewRef on AutoDisposeFutureProviderRef<OverviewData?> {
  /// The parameter `symbol` of this provider.
  String get symbol;
}

class _GetOverviewProviderElement
    extends AutoDisposeFutureProviderElement<OverviewData?>
    with GetOverviewRef {
  _GetOverviewProviderElement(super.provider);

  @override
  String get symbol => (origin as GetOverviewProvider).symbol;
}

String _$priceTargetMatricsHash() =>
    r'39db882c4cbf745c6bd3b07ce2c487a1e784d887';

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
    extends AutoDisposeFutureProvider<List<PriceTargetData?>?> {
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
  AutoDisposeFutureProviderElement<List<PriceTargetData?>?> createElement() {
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
mixin PriceTargetMatricsRef
    on AutoDisposeFutureProviderRef<List<PriceTargetData?>?> {
  /// The parameter `symbol` of this provider.
  SymbolDto get symbol;
}

class _PriceTargetMatricsProviderElement
    extends AutoDisposeFutureProviderElement<List<PriceTargetData?>?>
    with PriceTargetMatricsRef {
  _PriceTargetMatricsProviderElement(super.provider);

  @override
  SymbolDto get symbol => (origin as PriceTargetMatricsProvider).symbol;
}

String _$matricsDataHash() => r'2e3d0c920a7bd8f3c9dde555725764d6e862121f';

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
class MatricsDataProvider extends AutoDisposeFutureProvider<MatricsResponse?> {
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
  AutoDisposeFutureProviderElement<MatricsResponse?> createElement() {
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
mixin MatricsDataRef on AutoDisposeFutureProviderRef<MatricsResponse?> {
  /// The parameter `symbol` of this provider.
  String get symbol;
}

class _MatricsDataProviderElement
    extends AutoDisposeFutureProviderElement<MatricsResponse?>
    with MatricsDataRef {
  _MatricsDataProviderElement(super.provider);

  @override
  String get symbol => (origin as MatricsDataProvider).symbol;
}

String _$pricePerformanceHash() => r'd4d4d6ef732621f8ef911ad1d61886b982d00aba';

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
class PricePerformanceProvider
    extends AutoDisposeFutureProvider<PricePerformance?> {
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
  AutoDisposeFutureProviderElement<PricePerformance?> createElement() {
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
mixin PricePerformanceRef on AutoDisposeFutureProviderRef<PricePerformance?> {
  /// The parameter `symbol` of this provider.
  SymbolDto get symbol;
}

class _PricePerformanceProviderElement
    extends AutoDisposeFutureProviderElement<PricePerformance?>
    with PricePerformanceRef {
  _PricePerformanceProviderElement(super.provider);

  @override
  SymbolDto get symbol => (origin as PricePerformanceProvider).symbol;
}

String _$shareStatsHash() => r'45962da09f1960846a9c0687145345e5ca8e1095';

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
class ShareStatsProvider extends AutoDisposeFutureProvider<SharesResponse?> {
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
  AutoDisposeFutureProviderElement<SharesResponse?> createElement() {
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
mixin ShareStatsRef on AutoDisposeFutureProviderRef<SharesResponse?> {
  /// The parameter `symbol` of this provider.
  SymbolDto get symbol;
}

class _ShareStatsProviderElement
    extends AutoDisposeFutureProviderElement<SharesResponse?>
    with ShareStatsRef {
  _ShareStatsProviderElement(super.provider);

  @override
  SymbolDto get symbol => (origin as ShareStatsProvider).symbol;
}

String _$fundamentalDataHash() => r'b870d00e4037ca43f17b87bc12e2beb5ff88f5d8';

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
class FundamentalDataProvider
    extends AutoDisposeFutureProvider<FundamentalResponse?> {
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
  AutoDisposeFutureProviderElement<FundamentalResponse?> createElement() {
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
mixin FundamentalDataRef on AutoDisposeFutureProviderRef<FundamentalResponse?> {
  /// The parameter `symbol` of this provider.
  SymbolDto get symbol;
}

class _FundamentalDataProviderElement
    extends AutoDisposeFutureProviderElement<FundamentalResponse?>
    with FundamentalDataRef {
  _FundamentalDataProviderElement(super.provider);

  @override
  SymbolDto get symbol => (origin as FundamentalDataProvider).symbol;
}

String _$priceComparisonHash() => r'f2e76360ae17348ebfdb83ffbfb0325b69e70e93';

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
class PriceComparisonProvider
    extends AutoDisposeFutureProvider<PriceComparisonModel?> {
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
  AutoDisposeFutureProviderElement<PriceComparisonModel?> createElement() {
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
mixin PriceComparisonRef
    on AutoDisposeFutureProviderRef<PriceComparisonModel?> {
  /// The parameter `priceComparisonDto` of this provider.
  PriceComparisonDto get priceComparisonDto;
}

class _PriceComparisonProviderElement
    extends AutoDisposeFutureProviderElement<PriceComparisonModel?>
    with PriceComparisonRef {
  _PriceComparisonProviderElement(super.provider);

  @override
  PriceComparisonDto get priceComparisonDto =>
      (origin as PriceComparisonProvider).priceComparisonDto;
}

String _$analyticsDataHash() => r'b33c9801e92dfd8192a2bd8c9a7beea2bbcd48af';

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
class AnalyticsDataProvider
    extends AutoDisposeFutureProvider<AnalystRatingResponse?> {
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
  AutoDisposeFutureProviderElement<AnalystRatingResponse?> createElement() {
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
mixin AnalyticsDataRef on AutoDisposeFutureProviderRef<AnalystRatingResponse?> {
  /// The parameter `symbol` of this provider.
  SymbolDto get symbol;
}

class _AnalyticsDataProviderElement
    extends AutoDisposeFutureProviderElement<AnalystRatingResponse?>
    with AnalyticsDataRef {
  _AnalyticsDataProviderElement(super.provider);

  @override
  SymbolDto get symbol => (origin as AnalyticsDataProvider).symbol;
}

String _$companyDetailHash() => r'7ebaf2071da648ac70fed6893a566a332d142fde';

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
class CompanyDetailProvider
    extends AutoDisposeFutureProvider<CompanyDetailModel?> {
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
  AutoDisposeFutureProviderElement<CompanyDetailModel?> createElement() {
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
mixin CompanyDetailRef on AutoDisposeFutureProviderRef<CompanyDetailModel?> {
  /// The parameter `symbol` of this provider.
  SymbolDto get symbol;
}

class _CompanyDetailProviderElement
    extends AutoDisposeFutureProviderElement<CompanyDetailModel?>
    with CompanyDetailRef {
  _CompanyDetailProviderElement(super.provider);

  @override
  SymbolDto get symbol => (origin as CompanyDetailProvider).symbol;
}

String _$earningsDataHash() => r'd7fcc369b7cf825d3869f3a0714f51dc3b66f8f5';

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
class EarningsDataProvider extends AutoDisposeFutureProvider<EarningsModel?> {
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
  AutoDisposeFutureProviderElement<EarningsModel?> createElement() {
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
mixin EarningsDataRef on AutoDisposeFutureProviderRef<EarningsModel?> {
  /// The parameter `symbol` of this provider.
  SymbolDto get symbol;
}

class _EarningsDataProviderElement
    extends AutoDisposeFutureProviderElement<EarningsModel?>
    with EarningsDataRef {
  _EarningsDataProviderElement(super.provider);

  @override
  SymbolDto get symbol => (origin as EarningsDataProvider).symbol;
}

String _$esgScoreHash() => r'1de81fae3aae74eb044c4a9688b58a1880642bff';

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
class EsgScoreProvider extends AutoDisposeFutureProvider<EsgScoreModel?> {
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
  AutoDisposeFutureProviderElement<EsgScoreModel?> createElement() {
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
mixin EsgScoreRef on AutoDisposeFutureProviderRef<EsgScoreModel?> {
  /// The parameter `symbol` of this provider.
  String get symbol;
}

class _EsgScoreProviderElement
    extends AutoDisposeFutureProviderElement<EsgScoreModel?>
    with EsgScoreRef {
  _EsgScoreProviderElement(super.provider);

  @override
  String get symbol => (origin as EsgScoreProvider).symbol;
}

String _$insiderTradesHash() => r'87849eac121b835aa2bb78d00c50b6a8f90af452';

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
    extends AutoDisposeFutureProvider<InsiderTransactionResponse?> {
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
  AutoDisposeFutureProviderElement<InsiderTransactionResponse?>
  createElement() {
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
mixin InsiderTradesRef
    on AutoDisposeFutureProviderRef<InsiderTransactionResponse?> {
  /// The parameter `symbol` of this provider.
  SymbolDto get symbol;
}

class _InsiderTradesProviderElement
    extends AutoDisposeFutureProviderElement<InsiderTransactionResponse?>
    with InsiderTradesRef {
  _InsiderTradesProviderElement(super.provider);

  @override
  SymbolDto get symbol => (origin as InsiderTradesProvider).symbol;
}

String _$shortVolumeDataHash() => r'790c70db3104be15a49378c6f8856621574a1d04';

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
class ShortVolumeDataProvider
    extends AutoDisposeFutureProvider<ShortVolumeModel?> {
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
  AutoDisposeFutureProviderElement<ShortVolumeModel?> createElement() {
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
mixin ShortVolumeDataRef on AutoDisposeFutureProviderRef<ShortVolumeModel?> {
  /// The parameter `symbol` of this provider.
  SymbolDto get symbol;
}

class _ShortVolumeDataProviderElement
    extends AutoDisposeFutureProviderElement<ShortVolumeModel?>
    with ShortVolumeDataRef {
  _ShortVolumeDataProviderElement(super.provider);

  @override
  SymbolDto get symbol => (origin as ShortVolumeDataProvider).symbol;
}

String _$securityShortVolumeHash() =>
    r'315d426c49f99aaf3b860c5a4161643988856f3d';

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
    extends AutoDisposeFutureProvider<ShortSecurityResponse?> {
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
  AutoDisposeFutureProviderElement<ShortSecurityResponse?> createElement() {
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
mixin SecurityShortVolumeRef
    on AutoDisposeFutureProviderRef<ShortSecurityResponse?> {
  /// The parameter `symbol` of this provider.
  SymbolDto get symbol;
}

class _SecurityShortVolumeProviderElement
    extends AutoDisposeFutureProviderElement<ShortSecurityResponse?>
    with SecurityShortVolumeRef {
  _SecurityShortVolumeProviderElement(super.provider);

  @override
  SymbolDto get symbol => (origin as SecurityShortVolumeProvider).symbol;
}

String _$shortOwnershipHash() => r'fd32285c0a02443668a883fe5dcb224b2ce47aad';

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
    extends AutoDisposeFutureProvider<SecurityOwnershipResponse?> {
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
  AutoDisposeFutureProviderElement<SecurityOwnershipResponse?> createElement() {
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
mixin ShortOwnershipRef
    on AutoDisposeFutureProviderRef<SecurityOwnershipResponse?> {
  /// The parameter `symbol` of this provider.
  SymbolDto get symbol;
}

class _ShortOwnershipProviderElement
    extends AutoDisposeFutureProviderElement<SecurityOwnershipResponse?>
    with ShortOwnershipRef {
  _ShortOwnershipProviderElement(super.provider);

  @override
  SymbolDto get symbol => (origin as ShortOwnershipProvider).symbol;
}

String _$companyDataHash() => r'3835c91f4b056a1234e236ba4d9da2a49c87191c';

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
class CompanyDataProvider extends AutoDisposeFutureProvider<CompanyModel?> {
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
  AutoDisposeFutureProviderElement<CompanyModel?> createElement() {
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
mixin CompanyDataRef on AutoDisposeFutureProviderRef<CompanyModel?> {
  /// The parameter `symbol` of this provider.
  SymbolDto get symbol;
}

class _CompanyDataProviderElement
    extends AutoDisposeFutureProviderElement<CompanyModel?>
    with CompanyDataRef {
  _CompanyDataProviderElement(super.provider);

  @override
  SymbolDto get symbol => (origin as CompanyDataProvider).symbol;
}

String _$financialChartsHash() => r'c022013180e7f162749607c230c47bf1d02ad03a';

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
class FinancialChartsProvider
    extends AutoDisposeFutureProvider<FinanceDataResponse?> {
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
  AutoDisposeFutureProviderElement<FinanceDataResponse?> createElement() {
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
mixin FinancialChartsRef on AutoDisposeFutureProviderRef<FinanceDataResponse?> {
  /// The parameter `symbol` of this provider.
  SymbolDto get symbol;
}

class _FinancialChartsProviderElement
    extends AutoDisposeFutureProviderElement<FinanceDataResponse?>
    with FinancialChartsRef {
  _FinancialChartsProviderElement(super.provider);

  @override
  SymbolDto get symbol => (origin as FinancialChartsProvider).symbol;
}

String _$financialDataHash() => r'165fc8921dd8dc268b9c3b81aa5e960a0e00cc15';

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
class FinancialDataProvider
    extends AutoDisposeFutureProvider<FinancialResponse?> {
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
  AutoDisposeFutureProviderElement<FinancialResponse?> createElement() {
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
mixin FinancialDataRef on AutoDisposeFutureProviderRef<FinancialResponse?> {
  /// The parameter `overview` of this provider.
  PriceRequestDto get overview;
}

class _FinancialDataProviderElement
    extends AutoDisposeFutureProviderElement<FinancialResponse?>
    with FinancialDataRef {
  _FinancialDataProviderElement(super.provider);

  @override
  PriceRequestDto get overview => (origin as FinancialDataProvider).overview;
}

String _$earningChartDataHash() => r'5d0d997d3c81326f0790ca50b98970899cd471c4';

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
class EarningChartDataProvider
    extends AutoDisposeFutureProvider<EarningChartModel?> {
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
  AutoDisposeFutureProviderElement<EarningChartModel?> createElement() {
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
mixin EarningChartDataRef on AutoDisposeFutureProviderRef<EarningChartModel?> {
  /// The parameter `overview` of this provider.
  ChartRequestDto get overview;
}

class _EarningChartDataProviderElement
    extends AutoDisposeFutureProviderElement<EarningChartModel?>
    with EarningChartDataRef {
  _EarningChartDataProviderElement(super.provider);

  @override
  ChartRequestDto get overview => (origin as EarningChartDataProvider).overview;
}

String _$earningReportDataHash() => r'947ae52ee1f5369e4e0bd00810ecfbb1a1e57325';

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
class EarningReportDataProvider
    extends AutoDisposeFutureProvider<EarningReportsModel?> {
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
  AutoDisposeFutureProviderElement<EarningReportsModel?> createElement() {
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
mixin EarningReportDataRef
    on AutoDisposeFutureProviderRef<EarningReportsModel?> {
  /// The parameter `overview` of this provider.
  ChartRequestDto get overview;
}

class _EarningReportDataProviderElement
    extends AutoDisposeFutureProviderElement<EarningReportsModel?>
    with EarningReportDataRef {
  _EarningReportDataProviderElement(super.provider);

  @override
  ChartRequestDto get overview =>
      (origin as EarningReportDataProvider).overview;
}

String _$analysisDataHash() => r'ecd965fc038e5b94f807d873c6bfa5a2d49ba261';

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
class AnalysisDataProvider
    extends AutoDisposeFutureProvider<AnalysisDataModel?> {
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
  AutoDisposeFutureProviderElement<AnalysisDataModel?> createElement() {
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
mixin AnalysisDataRef on AutoDisposeFutureProviderRef<AnalysisDataModel?> {
  /// The parameter `overview` of this provider.
  ChartRequestDto get overview;
}

class _AnalysisDataProviderElement
    extends AutoDisposeFutureProviderElement<AnalysisDataModel?>
    with AnalysisDataRef {
  _AnalysisDataProviderElement(super.provider);

  @override
  ChartRequestDto get overview => (origin as AnalysisDataProvider).overview;
}

String _$highlightsTopHash() => r'16cf69ae7fbb8680571b97bd0838025ada0c7b80';

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
class HighlightsTopProvider
    extends AutoDisposeFutureProvider<HighlightResponse?> {
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
  AutoDisposeFutureProviderElement<HighlightResponse?> createElement() {
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
mixin HighlightsTopRef on AutoDisposeFutureProviderRef<HighlightResponse?> {
  /// The parameter `highlightRequest` of this provider.
  HighlightRequest get highlightRequest;
}

class _HighlightsTopProviderElement
    extends AutoDisposeFutureProviderElement<HighlightResponse?>
    with HighlightsTopRef {
  _HighlightsTopProviderElement(super.provider);

  @override
  HighlightRequest get highlightRequest =>
      (origin as HighlightsTopProvider).highlightRequest;
}

String _$marketCapChartHash() => r'ead42c34212b5f8417544a4b3ce8eae821c5f1a3';

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
class MarketCapChartProvider
    extends AutoDisposeFutureProvider<MarketCapResponse?> {
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
  AutoDisposeFutureProviderElement<MarketCapResponse?> createElement() {
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
mixin MarketCapChartRef on AutoDisposeFutureProviderRef<MarketCapResponse?> {
  /// The parameter `symbol` of this provider.
  MarketCapRequest get symbol;
}

class _MarketCapChartProviderElement
    extends AutoDisposeFutureProviderElement<MarketCapResponse?>
    with MarketCapChartRef {
  _MarketCapChartProviderElement(super.provider);

  @override
  MarketCapRequest get symbol => (origin as MarketCapChartProvider).symbol;
}

String _$cryptoMarketsHash() => r'5b933e6f6def2385152c443bbc51462badf577a3';

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
class CryptoMarketsProvider
    extends AutoDisposeFutureProvider<CryptoMarketModel?> {
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
  AutoDisposeFutureProviderElement<CryptoMarketModel?> createElement() {
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
mixin CryptoMarketsRef on AutoDisposeFutureProviderRef<CryptoMarketModel?> {
  /// The parameter `symbol` of this provider.
  SymbolDto get symbol;
}

class _CryptoMarketsProviderElement
    extends AutoDisposeFutureProviderElement<CryptoMarketModel?>
    with CryptoMarketsRef {
  _CryptoMarketsProviderElement(super.provider);

  @override
  SymbolDto get symbol => (origin as CryptoMarketsProvider).symbol;
}

String _$priceRatioHash() => r'7f016716f6a1aad32f1233859f3a571da3b6cd3f';

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
class PriceRatioProvider
    extends AutoDisposeFutureProvider<PriceComparisonModel?> {
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
  AutoDisposeFutureProviderElement<PriceComparisonModel?> createElement() {
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
mixin PriceRatioRef on AutoDisposeFutureProviderRef<PriceComparisonModel?> {
  /// The parameter `symbol` of this provider.
  PriceComparisonDto get symbol;
}

class _PriceRatioProviderElement
    extends AutoDisposeFutureProviderElement<PriceComparisonModel?>
    with PriceRatioRef {
  _PriceRatioProviderElement(super.provider);

  @override
  PriceComparisonDto get symbol => (origin as PriceRatioProvider).symbol;
}

String _$analyticsProviderHash() => r'655798700dd7bdf23c1e064675345fe8c2ed5d44';

/// See also [AnalyticsProvider].
@ProviderFor(AnalyticsProvider)
final analyticsProviderProvider =
    AutoDisposeNotifierProvider<AnalyticsProvider, AppLoadingState>.internal(
      AnalyticsProvider.new,
      name: r'analyticsProviderProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$analyticsProviderHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$AnalyticsProvider = AutoDisposeNotifier<AppLoadingState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
