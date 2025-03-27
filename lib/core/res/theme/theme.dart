import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../colors.dart';
import '../styles.dart';

//this class contain project themedata we can change anything in here
//here we can change any type of text color and any components have set unique color like bottom navigation bar, appbar and scaffold
//we can add dark mode and light mode
//this private varial going with help of get method
//because get method treat with variables in flutter
class KTheme {
  final ThemeData _themeData = ThemeData(
//--------------text theme ---------------//colors<<<<<<<<<<<//
    textTheme: const TextTheme(
      // Only For Colors
      //based on some text colors are hard coded

      labelLarge: TextStyle(color: kBlack),
      labelMedium: TextStyle(color: kBlack),
      labelSmall: TextStyle(color: kGrey),

      bodyLarge: TextStyle(color: kBlack),
      bodyMedium: TextStyle(color: kBlack),
      bodySmall: TextStyle(color: kGrey),

      displayMedium: TextStyle(color: kWhite),
      displaySmall: TextStyle(color: kGrey),

      titleMedium: TextStyle(color: kBlack),
      titleSmall: TextStyle(color: kGrey),
    ),
    // useMaterial3: true,
//-------------switch color code-------------//
    switchTheme: SwitchThemeData(
      splashRadius: 10,
      thumbColor: WidgetStateProperty.all(kPrimary),
      trackColor: WidgetStateProperty.all(kInActive),
    ),

//--------------icon theme datas---------------//
    iconTheme: IconThemeData(
      color: kInActive,
    ),
    primaryIconTheme: const IconThemeData(color: kInActive),
//--------------compponents color code---------------//
    scaffoldBackgroundColor: kWhite,
    appBarTheme: AppBarTheme(
      systemOverlayStyle: const SystemUiOverlayStyle(
        systemNavigationBarColor: kWhite,
        statusBarColor: kTransparent,
      ),
      backgroundColor: kWhite,
      elevation: 0,
      shadowColor: kLight,
    ),
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: kWhite),
    tabBarTheme: TabBarTheme(
      labelStyle: KStyle.title(size: 13, fontWeight: FontWeight.bold),
      labelColor: Color.lerp(kPrimary, kInActive, 1),
      unselectedLabelColor: kBlack.withOpacity(.6),
      unselectedLabelStyle: KStyle.title(
        size: 13,
        color: kBlack.withOpacity(.6),
        fontWeight: FontWeight.bold,
      ),
    ),
    // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
//--------------theme datas---------------//
    // colorScheme: ColorScheme.fromSwatch().copyWith(primary: kWhite),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    // splashColor:kTransperent ,
    //highlightColor: kTransperent,
    //indicatorColor: kTransperent,
    // canvasColor: kWhite,

    // primaryColorDark: kBlack,
    // primaryColor: kBlack,

//--------------font family---------------//
    fontFamily: 'Poppins',
  );

  ThemeData get theme => _themeData;
}
