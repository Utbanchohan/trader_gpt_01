// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$socketConnectionHash() => r'6805a2a06a20f810508b51a4f169a92f1f74ee50';

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

abstract class _$SocketConnection extends BuildlessAsyncNotifier<void> {
  late final String? token;

  FutureOr<void> build({String? token});
}

/// See also [SocketConnection].
@ProviderFor(SocketConnection)
const socketConnectionProvider = SocketConnectionFamily();

/// See also [SocketConnection].
class SocketConnectionFamily extends Family<AsyncValue<void>> {
  /// See also [SocketConnection].
  const SocketConnectionFamily();

  /// See also [SocketConnection].
  SocketConnectionProvider call({String? token}) {
    return SocketConnectionProvider(token: token);
  }

  @override
  SocketConnectionProvider getProviderOverride(
    covariant SocketConnectionProvider provider,
  ) {
    return call(token: provider.token);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'socketConnectionProvider';
}

/// See also [SocketConnection].
class SocketConnectionProvider
    extends AsyncNotifierProviderImpl<SocketConnection, void> {
  /// See also [SocketConnection].
  SocketConnectionProvider({String? token})
    : this._internal(
        () => SocketConnection()..token = token,
        from: socketConnectionProvider,
        name: r'socketConnectionProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$socketConnectionHash,
        dependencies: SocketConnectionFamily._dependencies,
        allTransitiveDependencies:
            SocketConnectionFamily._allTransitiveDependencies,
        token: token,
      );

  SocketConnectionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.token,
  }) : super.internal();

  final String? token;

  @override
  FutureOr<void> runNotifierBuild(covariant SocketConnection notifier) {
    return notifier.build(token: token);
  }

  @override
  Override overrideWith(SocketConnection Function() create) {
    return ProviderOverride(
      origin: this,
      override: SocketConnectionProvider._internal(
        () => create()..token = token,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        token: token,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<SocketConnection, void> createElement() {
    return _SocketConnectionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SocketConnectionProvider && other.token == token;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, token.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SocketConnectionRef on AsyncNotifierProviderRef<void> {
  /// The parameter `token` of this provider.
  String? get token;
}

class _SocketConnectionProviderElement
    extends AsyncNotifierProviderElement<SocketConnection, void>
    with SocketConnectionRef {
  _SocketConnectionProviderElement(super.provider);

  @override
  String? get token => (origin as SocketConnectionProvider).token;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
