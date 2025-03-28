import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:functions/core/di/injectable.dart';
import 'package:functions/data/model/survey_model/survey_model.dart';
import 'package:functions/presentation/screen/dashboard/dashboard_bloc/dashboard_bloc.dart';
import 'package:functions/presentation/screen/login/login_bloc/login_bloc.dart';
import 'package:functions/presentation/screen/sign_up/sign_up_bloc/signup_bloc.dart';
import 'package:functions/presentation/screen/sign_up/signup_screen.dart';
import 'package:functions/presentation/screen/splash/splash_screen.dart';
import 'package:functions/presentation/screen/login/login_screen.dart';
import 'package:functions/presentation/screen/survey/bloc/survey_bloc.dart';
import 'package:functions/presentation/screen/survey/survey_screen.dart';

import '../../../presentation/screen/dashboard/screen_dashboard.dart';
import 'routes_name.dart';

//This class is a standard routing in flutter its work on help of getx packages
//it's a example of push named routing
//easily to handle page routing with help of this private list items
//this private  list name we can get  the help of get variable.

class KRoute {
  //its a generated routing method we can access and rout any screen with endpoint name
  //its used to generated paged named parameter
  //its a page routing builder
  //because i want a transition right to left so i choose this method
  //in this below normal generated method is here
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case KRoutesName.splash:
        return kPageBuilder(
          (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              const ScreenSplash(),
        );

      case KRoutesName.dashboard:
        return kPageBuilder(
          (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              BlocProvider<DashboardBloc>(
            create: (context) => getIt<DashboardBloc>(),
            child: const ScreenDashboard(),
          ),
        );

      case KRoutesName.login:
        return kPageBuilder(
          (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              const ScreenLogin(),
        );

      case KRoutesName.survey:
        return kPageBuilder(
          (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>  BlocProvider<SurveyBloc>(
            create: (context) => getIt<SurveyBloc>(),
            child: 
              ScreenSurvey(survey: (settings.arguments??const SurveyModel()) as SurveyModel ,),

          ),
        );
 case KRoutesName.signup:
        return kPageBuilder(
          (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              const ScreenSignUp(),
        );
      //---404-page not found screen rout
      default:
        return null;
    }
  }

// this static method going with right to left annimation in each page rout
//this method calling many
// code re-usability
  static PageRouteBuilder<dynamic> kPageBuilder(
      Widget Function(BuildContext, Animation<double>, Animation<double>)
          pageBuilder) {
    return PageRouteBuilder<dynamic>(
      pageBuilder: pageBuilder,
      transitionsBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget? child) {
        const Offset begin = Offset(1.0, 0.0);
        const Offset end = Offset.zero;
        const Cubic curve = Curves.ease;

        final Animatable<Offset> tween =
            Tween<Offset>(begin: begin, end: end).chain(
          CurveTween(
            curve: curve,
          ),
        );

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
