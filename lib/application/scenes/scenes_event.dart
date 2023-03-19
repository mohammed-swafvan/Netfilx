part of 'scenes_bloc.dart';

@freezed
class ScenesEvent with _$ScenesEvent {
  const factory ScenesEvent.initialized() = Initialized;
  const factory ScenesEvent.likeVideo({required int id}) = LikeVideo;
  const factory ScenesEvent.unLikeVideo({required int id}) = UnLikeVideo;
}
