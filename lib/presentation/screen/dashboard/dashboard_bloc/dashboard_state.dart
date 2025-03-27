part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
required String msg,
    required LoadingState isLoadingState,
  }) = _DashboardState;

    factory DashboardState.initial() =>
      DashboardState(msg: '', isLoadingState: LoadingState.IDLE);
}
