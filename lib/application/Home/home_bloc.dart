import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';
import 'package:netflix/domain/hot_and_new_resp/hot_and_new_service.dart';
import 'package:netflix/domain/hot_and_new_resp/models/hot_and_new_resp.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HotAndNewService homeService;

  HomeBloc(this.homeService) : super(HomeState.initial()) {
    on<GetHomeScreendata>((event, emit) async {
      // send loading to ui
      emit(state.copyWith(isLoading: true, hasError: false));

      // get data
      final movieResult = await homeService.getHotAndNewMovieData();
      final tvResult = await homeService.getHotAndNewTvData();

      // transform data

      final stateOne = movieResult.fold(
        (MainFailures f) {
          return  HomeState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            pastYearMovieList: [],
            trendingNowList: [],
            tenseDaramasList: [],
            southIndianList: [],
            trendingTvList: [],
            isLoading: false,
            hasError: true,
          );
        },
        (HotAndNewResp resp) {
          final pastYear = resp.results;
          final trendingNow = resp.results;
          final tenseDramas = resp.results;
          final southIndian = resp.results;
          southIndian.shuffle;
          pastYear.shuffle;
          trendingNow.shuffle;
          tenseDramas.shuffle;
        
          return HomeState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            pastYearMovieList: pastYear,
            trendingNowList: trendingNow,
            tenseDaramasList: tenseDramas,
            southIndianList: southIndian,
            trendingTvList: state.trendingTvList,
            isLoading: false,
            hasError: false,
          );
        },
      );

      emit(stateOne);

      final stateTwo = tvResult.fold(
        (MainFailures f) {
          return  HomeState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            pastYearMovieList: [],
            trendingNowList: [],
            tenseDaramasList: [],
            southIndianList: [],
            trendingTvList: [],
            isLoading: false,
            hasError: true,
          );
        },
        (HotAndNewResp resp) {
          final topTenList = resp.results;
          topTenList.shuffle();
          return HomeState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            pastYearMovieList: state.pastYearMovieList,
            trendingNowList: state.trendingNowList,
            tenseDaramasList: state.tenseDaramasList,
            southIndianList: state.southIndianList,
            trendingTvList: topTenList,
            isLoading: false,
            hasError: false,
          );
        },
      );

      emit(stateTwo);

      //sent to ui
    });
  }
}
