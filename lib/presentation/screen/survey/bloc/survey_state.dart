part of 'survey_bloc.dart';



@freezed
class SurveyState with _$SurveyState {
  factory SurveyState({
    required String msg,
    required LoadingState isLoadingState,
  }) = _SurveyState;

  factory SurveyState.initial() =>
      SurveyState(msg: '', isLoadingState: LoadingState.IDLE);
}
