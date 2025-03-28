part of 'suervey_update_bloc.dart';

@freezed
class SuerveyUpdateEvent with _$SuerveyUpdateEvent {
  const factory SuerveyUpdateEvent.addSurvey({required SurveyModel body}) = AddSurvey;
  const factory SuerveyUpdateEvent.updateSurvey({required SurveyModel body}) = UpdateSurvey;
}