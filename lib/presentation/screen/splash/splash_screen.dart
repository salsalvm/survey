import 'package:flutter/material.dart';
import 'package:functions/core/di/injectable.dart';
import 'package:functions/core/res/asset/image_asset.dart';
import 'package:functions/core/utils/routes/routes_name.dart';
import 'package:functions/data/db/preference_helper.dart';
import 'package:functions/data/db/preference_key.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/res/colors.dart';

late Size size;

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    checkUserLogin(context);
    return Scaffold(
      backgroundColor: kWhite,
      body: Center(
        child: Container(
          height: size.height * .3,
          width: size.width * .6,
          decoration: const BoxDecoration(
            color: kWhite,
            image: DecorationImage(
              fit: BoxFit.fill,
              filterQuality: FilterQuality.high,
              image: AssetImage(ImageAssets.splash),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> checkUserLogin(context) async {
    final PreferencesHelper pref = getIt<PreferencesHelper>();
    final bool isLogged = await pref.getBool(PrefKey.isLoggin);
    await Future.delayed(const Duration(seconds: 1));

    if (isLogged) {
      Navigator.pushReplacementNamed(context, KRoutesName.dashboard);
    } else {
      Navigator.pushReplacementNamed(context, KRoutesName.login);
    }
  }
}
