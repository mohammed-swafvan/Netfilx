import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';
import 'package:netflix/domain/hot_and_new_resp/models/hot_and_new_resp.dart';

abstract class HotAndNewService {
  Future<Either<MainFailures, HotAndNewResp>> getHotAndNewMovieData();
  Future<Either<MainFailures, HotAndNewResp>> getHotAndNewTvData();
}
