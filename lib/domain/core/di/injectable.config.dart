// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:netflix/application/downloads/downloads_bloc.dart' as _i5;
import 'package:netflix/application/Home/home_bloc.dart' as _i11;
import 'package:netflix/application/hot_and_new/hot_and_new_bloc.dart' as _i12;
import 'package:netflix/application/scenes/scenes_bloc.dart' as _i8;
import 'package:netflix/application/search/search_bloc.dart' as _i13;
import 'package:netflix/domain/downloads/download_service.dart' as _i3;
import 'package:netflix/domain/hot_and_new_resp/hot_and_new_service.dart'
    as _i6;
import 'package:netflix/domain/search/search_service.dart' as _i9;
import 'package:netflix/infrastructure/downloads/downloads_repositary.dart'
    as _i4;
import 'package:netflix/infrastructure/hot_and_new/hot_and_new_impl.dart'
    as _i7;
import 'package:netflix/infrastructure/search/search_impl.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init(_i1.GetIt get,
    {
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      get,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.DownloadService>(() => _i4.DownloadsRepositary());
    gh.factory<_i5.DownloadsBloc>(
        () => _i5.DownloadsBloc(gh<_i3.DownloadService>()));
    gh.lazySingleton<_i6.HotAndNewService>(() => _i7.HotAndNewImpl());
    gh.factory<_i8.ScenesBloc>(() => _i8.ScenesBloc(gh<_i3.DownloadService>()));
    gh.lazySingleton<_i9.SearchService>(() => _i10.SearchImpl());
    gh.factory<_i11.HomeBloc>(() => _i11.HomeBloc(gh<_i6.HotAndNewService>()));
    gh.factory<_i12.HotAndNewBloc>(
        () => _i12.HotAndNewBloc(gh<_i6.HotAndNewService>()));
    gh.factory<_i13.SearchBloc>(() => _i13.SearchBloc(
          gh<_i9.SearchService>(),
          gh<_i3.DownloadService>(),
        ));
    return get;
  }

