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

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';


@lazySingleton
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final PreferencesHelper pref;

  LoginBloc(this.pref) : super(LoginState.initial()) {
    on<LoginUser>((event, emit) async {
      emit(state.copyWith(msg: '', isLoadingState: LoadingState.LOADING));

      if (event.body.mail.isEmpty || event.body.pass.isEmpty) {
        emit(state.copyWith(
            msg: KString.fieldEmpty, isLoadingState: LoadingState.SUCCESS));
      } else if (CustomRegex.isValidEmail(event.body.mail)) {
        await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: event.body.mail, password: event.body.pass)
            .then((value) async {
          pref.setBool(PrefKey.isLoggin, true);

          emit(state.copyWith(
              msg: KString.loginSucces, isLoadingState: LoadingState.SUCCESS));
        }).onError((error, stackTrace) {
          emit(state.copyWith(
              msg: 'entered mail and password is incorrect',
              isLoadingState: LoadingState.SUCCESS));
        });
      } else {
        emit(state.copyWith(
            msg: KString.mailFormateWrong,
            isLoadingState: LoadingState.SUCCESS));
      }
    });

    on<ForgotPassword>((event, emit) async {
      emit(state.copyWith(msg: '', isLoadingState: LoadingState.LOADING));

      if (event.mail.isEmpty) {
        emit(state.copyWith(
            msg: KString.fieldEmpty, isLoadingState: LoadingState.SUCCESS));
      } else if (!CustomRegex.isValidEmail(event.mail)) {
        emit(state.copyWith(
            msg: KString.mailFormateWrong,
            isLoadingState: LoadingState.SUCCESS));
      } else {
        try {
          await FirebaseAuth.instance.sendPasswordResetEmail(email: event.mail);
          emit(state.copyWith(
              msg: KString.passwordResetSent,
              isLoadingState: LoadingState.SUCCESS));
        } catch (e) {
          emit(state.copyWith(
              msg: 'Error: ${e.toString()}',
              isLoadingState: LoadingState.SUCCESS));
        }
      }
    });
  }
}
