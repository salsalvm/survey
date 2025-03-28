part of 'survey_bloc.dart';

@freezed
class SurveyEvent with _$SurveyEvent {
  const factory SurveyEvent.addSurvey({required SurveyModel body}) = AddSurvey;
  const factory SurveyEvent.updateSurvey({required SurveyModel body}) = UpdateSurvey;
}