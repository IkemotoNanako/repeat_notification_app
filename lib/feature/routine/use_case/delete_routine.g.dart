// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_routine.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$deleteRoutineUseCaseHash() =>
    r'6136b5284b78d29c119573330067dd8f6c041c2b';

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

abstract class _$DeleteRoutineUseCase
    extends BuildlessAutoDisposeAsyncNotifier<void> {
  late final Routine routine;

  FutureOr<void> build(
    Routine routine,
  );
}

/// See also [DeleteRoutineUseCase].
@ProviderFor(DeleteRoutineUseCase)
const deleteRoutineUseCaseProvider = DeleteRoutineUseCaseFamily();

/// See also [DeleteRoutineUseCase].
class DeleteRoutineUseCaseFamily extends Family<AsyncValue<void>> {
  /// See also [DeleteRoutineUseCase].
  const DeleteRoutineUseCaseFamily();

  /// See also [DeleteRoutineUseCase].
  DeleteRoutineUseCaseProvider call(
    Routine routine,
  ) {
    return DeleteRoutineUseCaseProvider(
      routine,
    );
  }

  @override
  DeleteRoutineUseCaseProvider getProviderOverride(
    covariant DeleteRoutineUseCaseProvider provider,
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
  String? get name => r'deleteRoutineUseCaseProvider';
}

/// See also [DeleteRoutineUseCase].
class DeleteRoutineUseCaseProvider
    extends AutoDisposeAsyncNotifierProviderImpl<DeleteRoutineUseCase, void> {
  /// See also [DeleteRoutineUseCase].
  DeleteRoutineUseCaseProvider(
    Routine routine,
  ) : this._internal(
          () => DeleteRoutineUseCase()..routine = routine,
          from: deleteRoutineUseCaseProvider,
          name: r'deleteRoutineUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteRoutineUseCaseHash,
          dependencies: DeleteRoutineUseCaseFamily._dependencies,
          allTransitiveDependencies:
              DeleteRoutineUseCaseFamily._allTransitiveDependencies,
          routine: routine,
        );

  DeleteRoutineUseCaseProvider._internal(
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
    covariant DeleteRoutineUseCase notifier,
  ) {
    return notifier.build(
      routine,
    );
  }

  @override
  Override overrideWith(DeleteRoutineUseCase Function() create) {
    return ProviderOverride(
      origin: this,
      override: DeleteRoutineUseCaseProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<DeleteRoutineUseCase, void>
      createElement() {
    return _DeleteRoutineUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteRoutineUseCaseProvider && other.routine == routine;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, routine.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteRoutineUseCaseRef on AutoDisposeAsyncNotifierProviderRef<void> {
  /// The parameter `routine` of this provider.
  Routine get routine;
}

class _DeleteRoutineUseCaseProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<DeleteRoutineUseCase, void>
    with DeleteRoutineUseCaseRef {
  _DeleteRoutineUseCaseProviderElement(super.provider);

  @override
  Routine get routine => (origin as DeleteRoutineUseCaseProvider).routine;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
