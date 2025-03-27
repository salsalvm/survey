//----------theme data--------//
// this variable is the primary prior in this app
//theme data will change based of this variable value
//depend on bottom bar index

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:functions/core/utils/utils.dart';
import 'package:functions/presentation/screen/dashboard/dashboard_bloc/dashboard_bloc.dart';

import '../../../core/di/injectable.dart';
import '../../../core/res/colors.dart';
import '../../../core/res/string.dart';
import '../../../core/utils/enum/enum.dart';
import '../../../core/utils/loading_helper.dart';
import '../../../core/utils/routes/routes_name.dart';

ValueNotifier<int> indexChangerNavigator = ValueNotifier<int>(0);

class ScreenDashboard extends StatefulWidget {
  const ScreenDashboard({super.key});

  @override
  State<ScreenDashboard> createState() => _ScreenDashboardState();
}

class _ScreenDashboardState extends State<ScreenDashboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      extendBody: true,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                KUtils.customSimpleDialogue(context, title: 'Logout?',
                    onTapSecond: () {
                   context.read<DashboardBloc>().add(Logout());
                  Navigator.pop(context);
                }, content: 'Are you sure, you\nwant to logrout');
              },
              icon: Icon(Icons.logout))
        ],
      ),
      backgroundColor: kWhite,
      body: BlocConsumer<DashboardBloc, DashboardState>(
        listener: (context, state) {
          log('$state');
          if (state.isLoadingState != LoadingState.IDLE) {
            LoadingHelper.call(state.isLoadingState, context);
          }

          if (state.msg.isNotEmpty) {
            KUtils.snackMessage(context,
                message: state.msg,
                color: state.msg.contains(KString.logoutSucces)
                    ? kSuccess
                    : kError);
          }
          if (state.msg.contains(KString.logoutSucces)) {
            Navigator.pushNamedAndRemoveUntil(
                context, KRoutesName.login, (Route<dynamic> route) => false);
          }
        },
        builder: (context, state) {
          return SafeArea(child: Container());
        },
      ),
    );
  }
}
