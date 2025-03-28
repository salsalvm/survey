import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:functions/core/utils/enum/enum.dart';
import 'package:functions/data/model/survey_model/survey_model.dart';

import '../../../../core/res/string.dart';
import '../../../../data/db/local_db.dart';
import '../../../../data/db/preference_helper.dart';

part 'survey_event.dart';
part 'survey_state.dart';
part 'survey_bloc.freezed.dart';

class SurveyBloc extends Bloc<SurveyEvent, SurveyState> {
  final PreferencesHelper pref;
  final SurveyDbService db;
  SurveyBloc(this.db,this.pref) : super(SurveyState.initial()) {
   on<AddSurvey>(_addSurvey);
   on<UpdateSurvey>(_updateSurvey);
  }


Future<void> _addSurvey(
      AddSurvey event, Emitter<SurveyState> emit) async {
    emit(state.copyWith(isLoadingState: LoadingState.LOADING));

     db.saveSurvey(event.body);
   emit(state.copyWith(msg: KString.surveyAdded, isLoadingState: LoadingState.SUCCESS));
  
  }
  Future<void> _updateSurvey(
      UpdateSurvey event, Emitter<SurveyState> emit) async {
       emit(state.copyWith(msg: '' ,isLoadingState: LoadingState.LOADING));
      await pref.clearAll();
      emit(state.copyWith(msg:  KString.suerveyUpdated,isLoadingState: LoadingState.SUCCESS));
    
  }
}
