// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$disposeMyProvidersHash() =>
    r'087dbf84d7ca7189ae1288bce2cf7cfc9342ce3a';

/// See also [disposeMyProviders].
@ProviderFor(disposeMyProviders)
final disposeMyProvidersProvider = AutoDisposeFutureProvider<bool>.internal(
  disposeMyProviders,
  name: r'disposeMyProvidersProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$disposeMyProvidersHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DisposeMyProvidersRef = AutoDisposeFutureProviderRef<bool>;
String _$authHash() => r'19019ccaab7a59d018fc48401909e28c5272f739';

/// See also [Auth].
@ProviderFor(Auth)
final authProvider =
    AutoDisposeNotifierProvider<Auth, AppLoadingState>.internal(
      Auth.new,
      name: r'authProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$authHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$Auth = AutoDisposeNotifier<AppLoadingState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
