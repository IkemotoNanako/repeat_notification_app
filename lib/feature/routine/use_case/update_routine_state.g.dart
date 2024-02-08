// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_routine_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$updateRoutineStateUseCaseHash() =>
    r'0c2b90c300cf52ed7458af837669e211aab94dce';

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

abstract class _$UpdateRoutineStateUseCase
    extends BuildlessAutoDisposeAsyncNotifier<void> {
  late final Routine routine;

  FutureOr<void> build(
    Routine routine,
  );
}

/// See also [UpdateRoutineStateUseCase].
@ProviderFor(UpdateRoutineStateUseCase)
const updateRoutineStateUseCaseProvider = UpdateRoutineStateUseCaseFamily();

/// See also [UpdateRoutineStateUseCase].
class UpdateRoutineStateUseCaseFamily extends Family<AsyncValue<void>> {
  /// See also [UpdateRoutineStateUseCase].
  const UpdateRoutineStateUseCaseFamily();

  /// See also [UpdateRoutineStateUseCase].
  UpdateRoutineStateUseCaseProvider call(
    Routine routine,
  ) {
    return UpdateRoutineStateUseCaseProvider(
      routine,
    );
  }

  @override
  UpdateRoutineStateUseCaseProvider getProviderOverride(
    covariant UpdateRoutineStateUseCaseProvider provider,
  ) {
    return call(
      provider.routine,
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
  String? get name => r'updateRoutineStateUseCaseProvider';
}

/// See also [UpdateRoutineStateUseCase].
class UpdateRoutineStateUseCaseProvider
    extends AutoDisposeAsyncNotifierProviderImpl<UpdateRoutineStateUseCase,
        void> {
  /// See also [UpdateRoutineStateUseCase].
  UpdateRoutineStateUseCaseProvider(
    Routine routine,
  ) : this._internal(
          () => UpdateRoutineStateUseCase()..routine = routine,
          from: updateRoutineStateUseCaseProvider,
          name: r'updateRoutineStateUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateRoutineStateUseCaseHash,
          dependencies: UpdateRoutineStateUseCaseFamily._dependencies,
          allTransitiveDependencies:
              UpdateRoutineStateUseCaseFamily._allTransitiveDependencies,
          routine: routine,
        );

  UpdateRoutineStateUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.routine,
  }) : super.internal();

  final Routine routine;

  @override
  FutureOr<void> runNotifierBuild(
    covariant UpdateRoutineStateUseCase notifier,
  ) {
    return notifier.build(
      routine,
    );
  }

  @override
  Override overrideWith(UpdateRoutineStateUseCase Function() create) {
    return ProviderOverride(
      origin: this,
      override: UpdateRoutineStateUseCaseProvider._internal(
        () => create()..routine = routine,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        routine: routine,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<UpdateRoutineStateUseCase, void>
      createElement() {
    return _UpdateRoutineStateUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateRoutineStateUseCaseProvider &&
        other.routine == routine;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, routine.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateRoutineStateUseCaseRef
    on AutoDisposeAsyncNotifierProviderRef<void> {
  /// The parameter `routine` of this provider.
  Routine get routine;
}

class _UpdateRoutineStateUseCaseProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<UpdateRoutineStateUseCase,
        void> with UpdateRoutineStateUseCaseRef {
  _UpdateRoutineStateUseCaseProviderElement(super.provider);

  @override
  Routine get routine => (origin as UpdateRoutineStateUseCaseProvider).routine;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
