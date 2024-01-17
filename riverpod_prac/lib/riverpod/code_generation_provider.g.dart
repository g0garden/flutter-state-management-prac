// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_generation_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$gStateHash() => r'fd9277d643eed7d582aa7450deb98ec28dc9e560';

/// See also [gState].
@ProviderFor(gState)
final gStateProvider = AutoDisposeProvider<String>.internal(
  gState,
  name: r'gStateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$gStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GStateRef = AutoDisposeProviderRef<String>;
String _$gStateFutureHash() => r'6fdc12fc073cddf0fffbed76825d7e1e2b83a577';

/// See also [gStateFuture].
@ProviderFor(gStateFuture)
final gStateFutureProvider = AutoDisposeFutureProvider<int>.internal(
  gStateFuture,
  name: r'gStateFutureProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$gStateFutureHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GStateFutureRef = AutoDisposeFutureProviderRef<int>;
String _$gStateFuture2Hash() => r'7e87666430f62746072d9bc5073c3a11f60ad45c';

/// See also [gStateFuture2].
@ProviderFor(gStateFuture2)
final gStateFuture2Provider = FutureProvider<int>.internal(
  gStateFuture2,
  name: r'gStateFuture2Provider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$gStateFuture2Hash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GStateFuture2Ref = FutureProviderRef<int>;
String _$gStateMultiplyHash() => r'bbc21241248993abe0d9cc031eeec98f42db127e';

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

/// See also [gStateMultiply].
@ProviderFor(gStateMultiply)
const gStateMultiplyProvider = GStateMultiplyFamily();

/// See also [gStateMultiply].
class GStateMultiplyFamily extends Family<int> {
  /// See also [gStateMultiply].
  const GStateMultiplyFamily();

  /// See also [gStateMultiply].
  GStateMultiplyProvider call({
    required int num1,
    required int num2,
  }) {
    return GStateMultiplyProvider(
      num1: num1,
      num2: num2,
    );
  }

  @override
  GStateMultiplyProvider getProviderOverride(
    covariant GStateMultiplyProvider provider,
  ) {
    return call(
      num1: provider.num1,
      num2: provider.num2,
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
  String? get name => r'gStateMultiplyProvider';
}

/// See also [gStateMultiply].
class GStateMultiplyProvider extends AutoDisposeProvider<int> {
  /// See also [gStateMultiply].
  GStateMultiplyProvider({
    required int num1,
    required int num2,
  }) : this._internal(
          (ref) => gStateMultiply(
            ref as GStateMultiplyRef,
            num1: num1,
            num2: num2,
          ),
          from: gStateMultiplyProvider,
          name: r'gStateMultiplyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$gStateMultiplyHash,
          dependencies: GStateMultiplyFamily._dependencies,
          allTransitiveDependencies:
              GStateMultiplyFamily._allTransitiveDependencies,
          num1: num1,
          num2: num2,
        );

  GStateMultiplyProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.num1,
    required this.num2,
  }) : super.internal();

  final int num1;
  final int num2;

  @override
  Override overrideWith(
    int Function(GStateMultiplyRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GStateMultiplyProvider._internal(
        (ref) => create(ref as GStateMultiplyRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        num1: num1,
        num2: num2,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<int> createElement() {
    return _GStateMultiplyProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GStateMultiplyProvider &&
        other.num1 == num1 &&
        other.num2 == num2;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, num1.hashCode);
    hash = _SystemHash.combine(hash, num2.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GStateMultiplyRef on AutoDisposeProviderRef<int> {
  /// The parameter `num1` of this provider.
  int get num1;

  /// The parameter `num2` of this provider.
  int get num2;
}

class _GStateMultiplyProviderElement extends AutoDisposeProviderElement<int>
    with GStateMultiplyRef {
  _GStateMultiplyProviderElement(super.provider);

  @override
  int get num1 => (origin as GStateMultiplyProvider).num1;
  @override
  int get num2 => (origin as GStateMultiplyProvider).num2;
}

String _$gStateNotifierHash() => r'f5d3562260bad49518ffe5b82e60b7cc1b8655f2';

/// See also [GStateNotifier].
@ProviderFor(GStateNotifier)
final gStateNotifierProvider =
    AutoDisposeNotifierProvider<GStateNotifier, int>.internal(
  GStateNotifier.new,
  name: r'gStateNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$gStateNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GStateNotifier = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
