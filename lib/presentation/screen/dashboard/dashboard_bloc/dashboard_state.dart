part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    required String msg,
    required LoadingState isLoadingState,
    required List<SurveyModel> sureyList,
    required List<SurveyModel> completedList,
    required List<SurveyModel> inHoldList,
  }) = _DashboardState;

  factory DashboardState.initial() => const DashboardState(
      msg: '',
      isLoadingState: LoadingState.IDLE,
      sureyList: [],
      inHoldList: [],
      completedList: []);
}
