// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overview_candle_chart_crypto.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getOverviewCandleChartCryptoHash() =>
    r'c4bd74feb3a124f393bd0c4c0271b8aea26f178c';

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

/// See also [getOverviewCandleChartCrypto].
@ProviderFor(getOverviewCandleChartCrypto)
const getOverviewCandleChartCryptoProvider =
    GetOverviewCandleChartCryptoFamily();

/// See also [getOverviewCandleChartCrypto].
class GetOverviewCandleChartCryptoFamily
    extends Family<AsyncValue<OverviewCandleResponse>> {
  /// See also [getOverviewCandleChartCrypto].
  const GetOverviewCandleChartCryptoFamily();

  /// See also [getOverviewCandleChartCrypto].
  GetOverviewCandleChartCryptoProvider call(
    String symbol,
    String interval,
    String start_date,
    String end_date,
    String sub_points,
    String data_point,
  ) {
    return GetOverviewCandleChartCryptoProvider(
      symbol,
      interval,
      start_date,
      end_date,
      sub_points,
      data_point,
    );
  }

  @override
  GetOverviewCandleChartCryptoProvider getProviderOverride(
    covariant GetOverviewCandleChartCryptoProvider provider,
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
  String? get name => r'getOverviewCandleChartCryptoProvider';
}

/// See also [getOverviewCandleChartCrypto].
class GetOverviewCandleChartCryptoProvider
    extends AutoDisposeFutureProvider<OverviewCandleResponse> {
  /// See also [getOverviewCandleChartCrypto].
  GetOverviewCandleChartCryptoProvider(
    String symbol,
    String interval,
    String start_date,
    String end_date,
    String sub_points,
    String data_point,
  ) : this._internal(
        (ref) => getOverviewCandleChartCrypto(
          ref as GetOverviewCandleChartCryptoRef,
          symbol,
          interval,
          start_date,
          end_date,
          sub_points,
          data_point,
        ),
        from: getOverviewCandleChartCryptoProvider,
        name: r'getOverviewCandleChartCryptoProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$getOverviewCandleChartCryptoHash,
        dependencies: GetOverviewCandleChartCryptoFamily._dependencies,
        allTransitiveDependencies:
            GetOverviewCandleChartCryptoFamily._allTransitiveDependencies,
        symbol: symbol,
        interval: interval,
        start_date: start_date,
        end_date: end_date,
        sub_points: sub_points,
        data_point: data_point,
      );

  GetOverviewCandleChartCryptoProvider._internal(
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
      GetOverviewCandleChartCryptoRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetOverviewCandleChartCryptoProvider._internal(
        (ref) => create(ref as GetOverviewCandleChartCryptoRef),
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
    return _GetOverviewCandleChartCryptoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetOverviewCandleChartCryptoProvider &&
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
mixin GetOverviewCandleChartCryptoRef
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

class _GetOverviewCandleChartCryptoProviderElement
    extends AutoDisposeFutureProviderElement<OverviewCandleResponse>
    with GetOverviewCandleChartCryptoRef {
  _GetOverviewCandleChartCryptoProviderElement(super.provider);

  @override
  String get symbol => (origin as GetOverviewCandleChartCryptoProvider).symbol;
  @override
  String get interval =>
      (origin as GetOverviewCandleChartCryptoProvider).interval;
  @override
  String get start_date =>
      (origin as GetOverviewCandleChartCryptoProvider).start_date;
  @override
  String get end_date =>
      (origin as GetOverviewCandleChartCryptoProvider).end_date;
  @override
  String get sub_points =>
      (origin as GetOverviewCandleChartCryptoProvider).sub_points;
  @override
  String get data_point =>
      (origin as GetOverviewCandleChartCryptoProvider).data_point;
}

String _$overviewCandleChartCryptoHash() =>
    r'f256fc0170e0575bf9fef700fccb9cf86a9aa6b9';

/// See also [OverviewCandleChartCrypto].
@ProviderFor(OverviewCandleChartCrypto)
final overviewCandleChartCryptoProvider =
    AutoDisposeAsyncNotifierProvider<
      OverviewCandleChartCrypto,
      OverviewCandleChartModel
    >.internal(
      OverviewCandleChartCrypto.new,
      name: r'overviewCandleChartCryptoProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$overviewCandleChartCryptoHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$OverviewCandleChartCrypto =
    AutoDisposeAsyncNotifier<OverviewCandleChartModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
