import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/downloads/download_service.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';

part 'scenes_event.dart';
part 'scenes_state.dart';
part 'scenes_bloc.freezed.dart';

final dummyVideoUrls = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/VolkswagenGTIReview.mp4",
];

ValueNotifier<Set<int>> likedVideosIdNotifier = ValueNotifier({});

@injectable
class ScenesBloc extends Bloc<ScenesEvent, ScenesState> {
  ScenesBloc(
    DownloadService downloadService,
  ) : super(ScenesState.initial()) {
    on<Initialized>((event, emit) async {
      //sending loading to ui
      emit(const ScenesState(
        videoList: [],
        isLoading: true,
        isError: false,
      ));
      // get trending movies
      final result = await downloadService.getDownloadsImage();
      final states = result.fold((l) {
        return ScenesState(
          videoList: [],
          isLoading: false,
          isError: true,
        );
      }, (resp) {
        return ScenesState(
          videoList: resp,
          isLoading: false,
          isError: false,
        );
      });
      //send to ui
      emit(states);
    });

    on<LikeVideo>((event, emit) async {
      likedVideosIdNotifier.value.add(event.id);
      likedVideosIdNotifier.notifyListeners();
    });

    on<UnLikeVideo>((event, emit) async {
      likedVideosIdNotifier.value.remove(event.id);
      likedVideosIdNotifier.notifyListeners();
    });
  }
}
