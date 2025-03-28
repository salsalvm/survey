import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:functions/core/res/colors.dart';
import 'package:functions/core/res/components/action_button.dart';
import 'package:functions/core/res/components/custom_form_field.dart';
import 'package:functions/core/res/string.dart';
import 'package:functions/core/res/styles.dart';
import 'package:functions/core/utils/regex.dart';
import 'package:functions/core/utils/routes/routes_name.dart';
import 'package:functions/data/model/auth/auth_model.dart';
import 'package:functions/presentation/screen/sign_up/sign_up_bloc/signup_bloc.dart';
import 'package:functions/presentation/widgets/auth_appbar.dart';

import '../../../core/res/components/custom_rich_text.dart';
import '../../../core/utils/enum/enum.dart';
import '../../../core/utils/loading_helper.dart';
import '../../../core/utils/utils.dart';

class ScreenSignUp extends StatefulWidget {
  const ScreenSignUp({super.key});

  @override
  State<ScreenSignUp> createState() => _ScreenSignUpState();
}

class _ScreenSignUpState extends State<ScreenSignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
      child: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) => Scaffold(
          appBar: const PreferredSize(
              preferredSize: Size.fromHeight(56),
              child: AuthAppBar(title: KString.signup)),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: BlocConsumer<SignupBloc, SignupState>(
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
                  if (state.msg.contains(KString.registerSuccessfully)) {
                                  Navigator.pushNamedAndRemoveUntil(
                  context, KRoutesName.dashboard, (Route<dynamic> route) => false);
                   
                  }
                },
                builder: (context, state) {
                  return ListView(
                    children: [
                      const SizedBox(height: 130),
                      Card(
                        elevation: 10,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomFormfield(
                              name: KString.userFormField,
                              prefix: const Icon(Icons.person),
                              controller: nameController,
                              validator: (name) {
                                if (!CustomRegex.isValidName(name!)) {
                                  return KString.errorName;
                                }
                                if (name.toString().isEmpty) {
                                  return KString.errorEmptyName;
                                }
                                return null;
                              },
                            ),
                            const Divider(),
                            CustomFormfield(
                                name: KString.emailFormField,
                                controller: mailController,
                                validator: (mail) {
                                  if (!CustomRegex.isValidEmail(mail!)) {
                                    return KString.errorEmptyMail;
                                  }
                                  if (mail.toString().isEmpty) {
                                    return KString.errorMail;
                                  }
                                  return null;
                                },
                                prefix: const Icon(Icons.mail)),
                            const Divider(),
                            CustomFormfield(
                              obscureText: true,
                              name: KString.passwordFormField,
                              controller: passwordController,
                              validator: (pass) {
                                if (pass.toString().length < 6) {
                                  return KString.errorEmptyPassword;
                                }
                                if (pass.toString().isEmpty) {
                                  return KString.errorPassword;
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
                        children: [
                          Checkbox(value: true, onChanged: (value) {}),
                          Text(KString.rememberMe, style: KStyle.title())
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    
                       KRichText(size: 14, firstText: KString.cAlreadyAccount, secondText: KString.login,secondColor: kWarning,onTap: () {
                            Navigator.pushNamedAndRemoveUntil(
                                  context,
                                  KRoutesName.login,
                                  (Route<dynamic> route) => false);
                          },),
                      const SizedBox(height: 10),
                      ActionButton(
                        color: kWarning,
                        onTap: () {
                          final AuthModel body = AuthModel(name: nameController.text.trim(),pass: passwordController.text.trim(),mail: mailController.text.trim());
                          context
                              .read<SignupBloc>()
                              .add(RegisterUser(body: body));
                        },
                        radius: 5,
                        child: Text(KString.registerButton,
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
