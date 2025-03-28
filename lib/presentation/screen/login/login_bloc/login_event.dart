part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
 const factory LoginEvent.loginUser(
      {required AuthModel body}) = LoginUser;
      const factory LoginEvent.forgotPassword(
      {required String mail}) = ForgotPassword;
}