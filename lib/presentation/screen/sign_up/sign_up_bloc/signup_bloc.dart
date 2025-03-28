import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:functions/core/res/string.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/utils/enum/enum.dart';
import '../../../../core/utils/regex.dart';
import '../../../../data/db/preference_helper.dart';
import '../../../../data/db/preference_key.dart';
import '../../../../data/model/auth/auth_model.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';


@lazySingleton
class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final PreferencesHelper pref;

  SignupBloc(this.pref) : super(SignupState.initial()) {
    on<RegisterUser>((event, emit) async {
      emit(state.copyWith(msg: '', isLoadingState: LoadingState.LOADING));
      if (event.body.mail.isEmpty ||
          event.body.pass.isEmpty ||
          event.body.name.isEmpty) {
        emit(state.copyWith(
            msg: KString.fieldEmpty, isLoadingState: LoadingState.SUCCESS));
      } else if (CustomRegex.isValidEmail(event.body.mail)) {
        await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: event.body.mail, password: event.body.pass)
            .then((value) async {
          pref.setBool(PrefKey.isLoggin, true);

          emit(state.copyWith(msg: KString.registerSuccessfully));
        }).onError((error, _) {
          emit(state.copyWith(msg: KString.userAlreadyExist));
        });
      } else {
        emit(state.copyWith(msg: KString.mailFormateWrong));
      }
    });
  }
}
