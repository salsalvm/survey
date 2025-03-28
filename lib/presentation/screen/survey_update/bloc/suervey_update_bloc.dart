import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/enum/enum.dart';
import '../../../../data/model/survey_model/survey_model.dart';

part 'suervey_update_event.dart';
part 'suervey_update_state.dart';
part 'suervey_update_bloc.freezed.dart';

class SuerveyUpdateBloc extends Bloc<SuerveyUpdateEvent, SuerveyUpdateState> {
  SuerveyUpdateBloc() : super(SuerveyUpdateState.initial()) {
    on<SuerveyUpdateEvent>((event, emit) {
    });
  }
}
