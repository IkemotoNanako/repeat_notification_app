// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_routine.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$updateRoutineUseCaseHash() =>
    r'47a65474172e3cf323dfb5a5bc3549f5f8f69d06';

/// See also [UpdateRoutineUseCase].
@ProviderFor(UpdateRoutineUseCase)
final updateRoutineUseCaseProvider =
    AutoDisposeAsyncNotifierProvider<UpdateRoutineUseCase, void>.internal(
  UpdateRoutineUseCase.new,
  name: r'updateRoutineUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$updateRoutineUseCaseHash,
  dependencies: <ProviderOrFamily>[
    currentRoutineProvider,
    updatedRoutineFormValuesNotifierProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    currentRoutineProvider,
    ...?currentRoutineProvider.allTransitiveDependencies,
    updatedRoutineFormValuesNotifierProvider,
    ...?updatedRoutineFormValuesNotifierProvider.allTransitiveDependencies
  },
);

typedef _$UpdateRoutineUseCase = AutoDisposeAsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
