// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stocks_price.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$stocksStreamHash() => r'1ffbd35920f2b820ad2d46025cb624c0483209ce';

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
