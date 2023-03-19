part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required String stateId,
    required List<HotAndNewData> pastYearMovieList,
    required List<HotAndNewData> trendingNowList,
    required List<HotAndNewData> tenseDaramasList,
    required List<HotAndNewData> southIndianList,
    required List<HotAndNewData> trendingTvList,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;

  factory HomeState.initial() => const HomeState(
        stateId: '0',
        pastYearMovieList: [],
        trendingNowList: [],
        tenseDaramasList: [],
        southIndianList: [],
        trendingTvList: [],
        isLoading: false,
        hasError: false,
      );
}
