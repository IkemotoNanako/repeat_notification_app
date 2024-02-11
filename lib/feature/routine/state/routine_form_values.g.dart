// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routine_form_values.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$additionalRoutineFormValuesNotifierHash() =>
    r'7f5e078da4e3faf30b8ab26fb3f70afff8729761';

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
    r'1401fa38caa9f0560eb44384f22528234cf23afe';

/// See also [UpdatedRoutineFormValuesNotifier].
@ProviderFor(UpdatedRoutineFormValuesNotifier)
final updatedRoutineFormValuesNotifierProvider =
    AutoDisposeAsyncNotifierProvider<UpdatedRoutineFormValuesNotifier,
        RoutineFormValues>.internal(
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
    = AutoDisposeAsyncNotifier<RoutineFormValues>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
