// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_routine.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentRoutineParamsHash() =>
    r'70c184703c7297c043bf06a8e5624816741cca4f';

/// See also [currentRoutineParams].
@ProviderFor(currentRoutineParams)
final currentRoutineParamsProvider =
    AutoDisposeProvider<RoutineParams>.internal(
  currentRoutineParams,
  name: r'currentRoutineParamsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentRoutineParamsHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef CurrentRoutineParamsRef = AutoDisposeProviderRef<RoutineParams>;
String _$currentRoutineIdHash() => r'c40ba932239fbf6c6ee24b745c3d87c044ad39d4';

/// See also [currentRoutineId].
@ProviderFor(currentRoutineId)
final currentRoutineIdProvider = AutoDisposeProvider<int>.internal(
  currentRoutineId,
  name: r'currentRoutineIdProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentRoutineIdHash,
  dependencies: <ProviderOrFamily>[currentRoutineParamsProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    currentRoutineParamsProvider,
    ...?currentRoutineParamsProvider.allTransitiveDependencies
  },
);

typedef CurrentRoutineIdRef = AutoDisposeProviderRef<int>;
String _$currentRoutineHash() => r'f6b1477653f1d9a5bdce02f4f5343c3387e63d55';

/// See also [currentRoutine].
@ProviderFor(currentRoutine)
final currentRoutineProvider = AutoDisposeProvider<Routine?>.internal(
  currentRoutine,
  name: r'currentRoutineProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentRoutineHash,
  dependencies: <ProviderOrFamily>[currentRoutineParamsProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    currentRoutineParamsProvider,
    ...?currentRoutineParamsProvider.allTransitiveDependencies
  },
);

typedef CurrentRoutineRef = AutoDisposeProviderRef<Routine?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
