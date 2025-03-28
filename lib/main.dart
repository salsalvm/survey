import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:functions/presentation/screen/login/login_bloc/login_bloc.dart';
import 'package:functions/presentation/screen/sign_up/sign_up_bloc/signup_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import 'core/di/injectable.dart';
import 'core/res/colors.dart';
import 'core/res/theme/theme.dart';
import 'core/utils/routes/route.dart';
import 'core/utils/routes/routes_name.dart';
import 'data/model/survey_model/survey_model.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  // await Firebase.initializeApp();
  await Hive.initFlutter();
  Hive.registerAdapter(SurveyModelAdapter()); // Register the adapter
  await Hive.openBox<SurveyModel>('surveyBox'); // Open the box
  
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: kWhite, // bottom
      statusBarColor: kWhite, //upper
      systemNavigationBarDividerColor: kWhite,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  SystemChrome.setPreferredOrientations(
    <DeviceOrientation>[
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ],
  ).then(
    (_) {
      runApp(
        
        MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<LoginBloc>()), 
        BlocProvider(create: (context) => getIt<SignupBloc>()), 
      ],child: const MyApp()),
      );
    },
  );
}

// ---------------------------  key-notes -------------------------------//
//following MVVM folder architecture
//page routting using generatted-routes and getpage in rout folder
//colors hold static color variables in resource folder
//error toast and snack error messages are holding util folder in utils file
//text styles are holding with style file in resourse folder
//every string text in string file same res folder
//

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dil Do',
      theme: KTheme().theme,
      initialRoute: KRoutesName.splash,
      onGenerateRoute: KRoute.generateRoute,
    );
  }
}
