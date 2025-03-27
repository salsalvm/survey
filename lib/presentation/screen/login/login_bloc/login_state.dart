part of 'login_bloc.dart';


@freezed
class LoginState with _$LoginState {
  factory LoginState({
    required String msg,
    required LoadingState isLoadingState,
  }) = _LoginState;

  factory LoginState.initial() =>
      LoginState(msg: '', isLoadingState: LoadingState.IDLE);
}