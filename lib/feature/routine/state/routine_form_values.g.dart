// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routine_form_values.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$additionalRoutineFormValuesNotifierHash() =>
    r'e3d99c6e32d1791d37028fc88bb67403f052935e';

/// See also [AdditionalRoutineFormValuesNotifier].
@ProviderFor(AdditionalRoutineFormValuesNotifier)
final additionalRoutineFormValuesNotifierProvider = AutoDisposeNotifierProvider<
    AdditionalRoutineFormValuesNotifier, RoutineFormValues>.internal(
  AdditionalRoutineFormValuesNotifier.new,
  name: r'additionalRoutineFormValuesNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$additionalRoutineFormValuesNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AdditionalRoutineFormValuesNotifier
    = AutoDisposeNotifier<RoutineFormValues>;
String _$updatedRoutineFormValuesNotifierHash() =>
    r'e09de582ee283a166ecd0349ea2ad78e9e49ae85';

/// See also [UpdatedRoutineFormValuesNotifier].
@ProviderFor(UpdatedRoutineFormValuesNotifier)
final updatedRoutineFormValuesNotifierProvider = AutoDisposeNotifierProvider<
    UpdatedRoutineFormValuesNotifier, RoutineFormValues>.internal(
  UpdatedRoutineFormValuesNotifier.new,
  name: r'updatedRoutineFormValuesNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$updatedRoutineFormValuesNotifierHash,
  dependencies: <ProviderOrFamily>[currentRoutineProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    currentRoutineProvider,
    ...?currentRoutineProvider.allTransitiveDependencies
  },
);

typedef _$UpdatedRoutineFormValuesNotifier
    = AutoDisposeNotifier<RoutineFormValues>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
