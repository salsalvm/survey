import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:functions/core/di/injectable.dart';
import 'package:functions/core/res/colors.dart';
import 'package:functions/core/res/components/action_button.dart';
import 'package:functions/core/res/components/custom_rich_text.dart';
import 'package:functions/core/res/string.dart';
import 'package:functions/core/res/styles.dart';
import 'package:functions/core/utils/utils.dart';
import 'package:functions/presentation/screen/dashboard/screen_dashboard.dart';
import 'package:functions/presentation/screen/login/login_bloc/login_bloc.dart';
import 'package:functions/presentation/screen/splash/splash_screen.dart';
import 'package:functions/presentation/widgets/auth_appbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/res/components/custom_form_field.dart';
import '../../../core/utils/enum/enum.dart';
import '../../../core/utils/loading_helper.dart';
import '../../../core/utils/regex.dart';
import '../../../core/utils/routes/routes_name.dart';
import '../../../data/db/preference_helper.dart';
import '../../../data/db/preference_key.dart';
import '../../../data/model/auth_model.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    mailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: _formKey,
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(56),
            child: AuthAppBar(title: KString.login)),
        body: SafeArea(
          child: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) => Padding(
              padding: const EdgeInsets.all(30),
              child: BlocConsumer<LoginBloc, LoginState>(
                listener: (context, state) {
                  if (state.isLoadingState != LoadingState.IDLE) {
                    LoadingHelper.call(state.isLoadingState, context);
                  }

                  if (state.msg.isNotEmpty) {
                    KUtils.snackMessage(context,
                        message: state.msg,
                        color: state.msg.contains(KString.loginSucces)
                            ? kSuccess
                            : kError);
                  }
                  if (state.msg.contains(KString.loginSucces)) {
                    Navigator.pushNamedAndRemoveUntil(context,
                        KRoutesName.dashboard, (Route<dynamic> route) => false);
                  }
                },
                builder: (context, state) {
                  return ListView(
                    children: [
                      const SizedBox(height: 130),
                      Card(
                        elevation: 10,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomFormfield(
                              name: KString.emailFormField,
                              controller: mailController,
                              validator: (mail) {
                                if (!CustomRegex.isValidEmail(mail!)) {
                                  return KString.errorMail;
                                }
                                if (mail.toString().isEmpty) {
                                  return KString.errorEmptyMail;
                                }
                                return null;
                              },
                              prefix: const Icon(Icons.mail),
                            ),
                            const Divider(),
                            CustomFormfield(
                              obscureText: true,
                              name: KString.passwordFormField,
                              controller: passwordController,
                              validator: (pass) {
                                if (pass.toString().length < 6) {
                                  return KString.errorPassword;
                                }
                                if (pass.toString().isEmpty) {
                                  return KString.errorEmptyPassword;
                                }
                                return null;
                              },
                              prefix: const Icon(Icons.password),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisSize: MainAxisSize.min,mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(value: true, onChanged: (value) {}),
                          KRichText(size: 14, firstText: KString.rememberMe, secondText: KString.forgotPass,secondColor: kWarning,onTap: () {
                            context.read<LoginBloc>().add(
                                ForgotPassword(
                                    mail: mailController.text.trim()));
                          },),
                    
                        ],
                      ),
                      const SizedBox(height: 10),
                       KRichText(size: 14, firstText: KString.cNoAccount, secondText: KString.signup,secondColor: kWarning,onTap: () {
                            Navigator.pushNamedAndRemoveUntil(
                                  context,
                                  KRoutesName.signup,
                                  (Route<dynamic> route) => false);
                          },),
                
                      const SizedBox(height: 30),
                      ActionButton(
                        color: kWarning,
                        radius: 5,
                        onTap: () {
                          final AuthModel body = AuthModel(
                              pass: passwordController.text.trim(),
                              mail: mailController.text.trim());

                          context.read<LoginBloc>().add(LoginUser(body: body));
                        },
                        child: Text(KString.submit,
                            style: KStyle.title(color: kWhite)),
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
