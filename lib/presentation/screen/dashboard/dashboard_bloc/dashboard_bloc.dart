import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:functions/core/res/string.dart';
import 'package:functions/data/db/local_db.dart';
import 'package:functions/data/db/preference_helper.dart';
import 'package:functions/data/model/survey_model/survey_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/utils/enum/enum.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';

part 'dashboard_bloc.freezed.dart';

@lazySingleton
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {

  final PreferencesHelper pref;
  final SurveyDbService db;
  DashboardBloc(this.pref,this.db) : super(DashboardState.initial()) {
  
   on<Logout>(_logout);
   on<GetSurveyList>(_getSurveyList);


  }

Future<void> _getSurveyList(
      GetSurveyList event, Emitter<DashboardState> emit) async {
    emit(state.copyWith(isLoadingState: LoadingState.LOADING));

   final List<SurveyModel> surveyList= await db.getSurveys();
   emit(state.copyWith(isLoadingState: LoadingState.SUCCESS,sureyList: surveyList));
  
  }
  Future<void> _logout(
      Logout event, Emitter<DashboardState> emit) async {
       emit(state.copyWith(msg: '' ,isLoadingState: LoadingState.LOADING));
      await pref.clearAll();
      emit(state.copyWith(msg: KString.logoutSucces,isLoadingState: LoadingState.SUCCESS));
    
   
  }

}
