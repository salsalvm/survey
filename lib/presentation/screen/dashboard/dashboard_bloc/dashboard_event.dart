part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.logout() = Logout;
  const factory DashboardEvent.getSurveyList() = GetSurveyList;

}
