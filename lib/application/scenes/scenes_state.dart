part of 'scenes_bloc.dart';

@freezed
class ScenesState with _$ScenesState {
  const factory ScenesState({
    required List<Downloads> videoList,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory ScenesState.initial() => const ScenesState(
        videoList: [],
        isLoading: true,
        isError: false,
      );
}
