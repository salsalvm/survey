import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:functions/core/res/string.dart';
import 'package:functions/data/db/preference_helper.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/utils/enum/enum.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';

part 'dashboard_bloc.freezed.dart';

@lazySingleton
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {

  final PreferencesHelper pref;
  DashboardBloc(this.pref) : super(DashboardState.initial()) {
    on<Logout>((event, emit) async{
      emit(state.copyWith(msg: '' ,isLoadingState: LoadingState.LOADING));
      await pref.clearAll();
      emit(state.copyWith(msg: KString.logoutSucces,isLoadingState: LoadingState.SUCCESS));
    });
  }
}
