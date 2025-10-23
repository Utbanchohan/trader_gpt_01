// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stocks_price.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$stocksStreamHash() => r'0d52f54b05a93d85ac0d4d393e382d23b89d635b';

/// See also [StocksStream].
@ProviderFor(StocksStream)
final stocksStreamProvider = NotifierProvider<StocksStream, Stock>.internal(
  StocksStream.new,
  name: r'stocksStreamProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$stocksStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$StocksStream = Notifier<Stock>;
String _$stocksPricesHash() => r'0e46dea4171ccf0feaf5be03d06bc3c93d904efc';

/// See also [StocksPrices].
@ProviderFor(StocksPrices)
final stocksPricesProvider =
    NotifierProvider<StocksPrices, List<Stock>>.internal(
      StocksPrices.new,
      name: r'stocksPricesProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$stocksPricesHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$StocksPrices = Notifier<List<Stock>>;
String _$stocksManagerHash() =>
    r'32718302e0fe029283c6024372a635bc2ec6e96b'; ////
///
///
///
/// Copied from [StocksManager].
@ProviderFor(StocksManager)
final stocksManagerProvider =
    NotifierProvider<StocksManager, Map<String, Stock>>.internal(
      StocksManager.new,
      name: r'stocksManagerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$stocksManagerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$StocksManager = Notifier<Map<String, Stock>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
