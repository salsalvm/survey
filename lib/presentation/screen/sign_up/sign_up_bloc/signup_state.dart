part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  factory SignupState({
    required String msg,
    required LoadingState isLoadingState,
  }) = _SignupState;

  factory SignupState.initial() =>
      SignupState(msg: '', isLoadingState: LoadingState.IDLE);
}
