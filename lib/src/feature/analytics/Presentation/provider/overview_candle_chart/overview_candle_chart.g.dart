// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overview_candle_chart.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getOverviewCandleChartHash() =>
    r'4264569d2767a5b6a5c7532d902bdb4b391d955e';

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

/// See also [getOverviewCandleChart].
@ProviderFor(getOverviewCandleChart)
const getOverviewCandleChartProvider = GetOverviewCandleChartFamily();

/// See also [getOverviewCandleChart].
class GetOverviewCandleChartFamily
    extends Family<AsyncValue<OverviewCandleResponse>> {
  /// See also [getOverviewCandleChart].
  const GetOverviewCandleChartFamily();

  /// See also [getOverviewCandleChart].
  GetOverviewCandleChartProvider call(
    String symbol,
    String interval,
    String start_date,
    String end_date,
    String sub_points,
    String data_point,
  ) {
    return GetOverviewCandleChartProvider(
      symbol,
      interval,
      start_date,
      end_date,
      sub_points,
      data_point,
    );
  }

  @override
  GetOverviewCandleChartProvider getProviderOverride(
    covariant GetOverviewCandleChartProvider provider,
  ) {
    return call(
      provider.symbol,
      provider.interval,
      provider.start_date,
      provider.end_date,
      provider.sub_points,
      provider.data_point,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getOverviewCandleChartProvider';
}

/// See also [getOverviewCandleChart].
class GetOverviewCandleChartProvider
    extends AutoDisposeFutureProvider<OverviewCandleResponse> {
  /// See also [getOverviewCandleChart].
  GetOverviewCandleChartProvider(
    String symbol,
    String interval,
    String start_date,
    String end_date,
    String sub_points,
    String data_point,
  ) : this._internal(
        (ref) => getOverviewCandleChart(
          ref as GetOverviewCandleChartRef,
          symbol,
          interval,
          start_date,
          end_date,
          sub_points,
          data_point,
        ),
        from: getOverviewCandleChartProvider,
        name: r'getOverviewCandleChartProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$getOverviewCandleChartHash,
        dependencies: GetOverviewCandleChartFamily._dependencies,
        allTransitiveDependencies:
            GetOverviewCandleChartFamily._allTransitiveDependencies,
        symbol: symbol,
        interval: interval,
        start_date: start_date,
        end_date: end_date,
        sub_points: sub_points,
        data_point: data_point,
      );

  GetOverviewCandleChartProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.symbol,
    required this.interval,
    required this.start_date,
    required this.end_date,
    required this.sub_points,
    required this.data_point,
  }) : super.internal();

  final String symbol;
  final String interval;
  final String start_date;
  final String end_date;
  final String sub_points;
  final String data_point;

  @override
  Override overrideWith(
    FutureOr<OverviewCandleResponse> Function(
      GetOverviewCandleChartRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetOverviewCandleChartProvider._internal(
        (ref) => create(ref as GetOverviewCandleChartRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        symbol: symbol,
        interval: interval,
        start_date: start_date,
        end_date: end_date,
        sub_points: sub_points,
        data_point: data_point,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<OverviewCandleResponse> createElement() {
    return _GetOverviewCandleChartProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetOverviewCandleChartProvider &&
        other.symbol == symbol &&
        other.interval == interval &&
        other.start_date == start_date &&
        other.end_date == end_date &&
        other.sub_points == sub_points &&
        other.data_point == data_point;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, symbol.hashCode);
    hash = _SystemHash.combine(hash, interval.hashCode);
    hash = _SystemHash.combine(hash, start_date.hashCode);
    hash = _SystemHash.combine(hash, end_date.hashCode);
    hash = _SystemHash.combine(hash, sub_points.hashCode);
    hash = _SystemHash.combine(hash, data_point.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetOverviewCandleChartRef
    on AutoDisposeFutureProviderRef<OverviewCandleResponse> {
  /// The parameter `symbol` of this provider.
  String get symbol;

  /// The parameter `interval` of this provider.
  String get interval;

  /// The parameter `start_date` of this provider.
  String get start_date;

  /// The parameter `end_date` of this provider.
  String get end_date;

  /// The parameter `sub_points` of this provider.
  String get sub_points;

  /// The parameter `data_point` of this provider.
  String get data_point;
}

class _GetOverviewCandleChartProviderElement
    extends AutoDisposeFutureProviderElement<OverviewCandleResponse>
    with GetOverviewCandleChartRef {
  _GetOverviewCandleChartProviderElement(super.provider);

  @override
  String get symbol => (origin as GetOverviewCandleChartProvider).symbol;
  @override
  String get interval => (origin as GetOverviewCandleChartProvider).interval;
  @override
  String get start_date =>
      (origin as GetOverviewCandleChartProvider).start_date;
  @override
  String get end_date => (origin as GetOverviewCandleChartProvider).end_date;
  @override
  String get sub_points =>
      (origin as GetOverviewCandleChartProvider).sub_points;
  @override
  String get data_point =>
      (origin as GetOverviewCandleChartProvider).data_point;
}

String _$overviewCandleChartHash() =>
    r'0473fb6effe51ae9af0783b6544663d5e912c5e7';

/// See also [OverviewCandleChart].
@ProviderFor(OverviewCandleChart)
final overviewCandleChartProvider =
    AutoDisposeAsyncNotifierProvider<
      OverviewCandleChart,
      OverviewCandleChartModel
    >.internal(
      OverviewCandleChart.new,
      name: r'overviewCandleChartProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$overviewCandleChartHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$OverviewCandleChart =
    AutoDisposeAsyncNotifier<OverviewCandleChartModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
