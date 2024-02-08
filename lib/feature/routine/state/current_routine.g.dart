// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_routine.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentRoutineIdHash() => r'a8691b656922f95436bc9d3092557218f22fef11';

/// See also [currentRoutineId].
@ProviderFor(currentRoutineId)
final currentRoutineIdProvider = AutoDisposeProvider<int>.internal(
  currentRoutineId,
  name: r'currentRoutineIdProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentRoutineIdHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef CurrentRoutineIdRef = AutoDisposeProviderRef<int>;
String _$currentRoutineHash() => r'e59cab2d70d814c4c571ce753173347a6470228a';

/// See also [currentRoutine].
@ProviderFor(currentRoutine)
final currentRoutineProvider = AutoDisposeFutureProvider<Routine?>.internal(
  currentRoutine,
  name: r'currentRoutineProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentRoutineHash,
  dependencies: <ProviderOrFamily>[currentRoutineIdProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    currentRoutineIdProvider,
    ...?currentRoutineIdProvider.allTransitiveDependencies
  },
);

typedef CurrentRoutineRef = AutoDisposeFutureProviderRef<Routine?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
