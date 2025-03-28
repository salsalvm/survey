// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/db/preference_helper.dart' as _i55;
import '../../data/repository/message_repository.dart' as _i12;
import '../../data/repository/video_repository.dart' as _i918;
import '../../domain/repo/message_repo.dart' as _i727;
import '../../domain/repo/video_repo.dart' as _i499;
import '../../presentation/screen/dashboard/dashboard_bloc/dashboard_bloc.dart'
    as _i460;
import '../../presentation/screen/login/login_bloc/login_bloc.dart' as _i601;
import '../../presentation/screen/sign_up/sign_up_bloc/signup_bloc.dart'
    as _i913;
import '../network/dio_client.dart' as _i667;
import '../utils/socket_manager.dart' as _i153;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i667.DioClient>(() => _i667.DioClient());
    gh.lazySingleton<_i55.PreferencesHelper>(() => _i55.PreferencesHelper());
    gh.lazySingleton<_i727.IMessageRepo>(() => _i12.LandingRepository());
    gh.lazySingleton<_i153.WebSocketService>(() => _i153.WebSocketManager());
    gh.lazySingleton<_i499.IVideoRepo>(() => _i918.LandingRepository());
    gh.lazySingleton<_i913.SignupBloc>(
        () => _i913.SignupBloc(gh<_i55.PreferencesHelper>()));
    gh.lazySingleton<_i460.DashboardBloc>(
        () => _i460.DashboardBloc(gh<_i55.PreferencesHelper>()));
    gh.lazySingleton<_i601.LoginBloc>(
        () => _i601.LoginBloc(gh<_i55.PreferencesHelper>()));
    return this;
  }
}
