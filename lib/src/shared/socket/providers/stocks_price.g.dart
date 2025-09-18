// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stocks_price.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$stocksStreamHash() => r'57104ea3b9e1b2e50946d3ebbd4b7706a5269431';

/// See also [StocksStream].
@ProviderFor(StocksStream)
final stocksStreamProvider =
    NotifierProvider<StocksStream, List<Stock>>.internal(
      StocksStream.new,
      name: r'stocksStreamProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$stocksStreamHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$StocksStream = Notifier<List<Stock>>;
String _$stocksPricesHash() => r'e10e3d69171d3089c092861c07661b0f966a7bc3';

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
