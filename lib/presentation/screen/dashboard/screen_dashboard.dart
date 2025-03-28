//----------theme data--------//
// this variable is the primary prior in this app
//theme data will change based of this variable value
//depend on bottom bar index

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:functions/core/res/asset/image_asset.dart';
import 'package:functions/core/res/components/custom_asset_image.dart';
import 'package:functions/core/res/components/custom_network_image.dart';
import 'package:functions/core/res/styles.dart';
import 'package:functions/core/utils/utils.dart';
import 'package:functions/presentation/screen/dashboard/dashboard_bloc/dashboard_bloc.dart';

import '../../../core/di/injectable.dart';
import '../../../core/res/colors.dart';
import '../../../core/res/string.dart';
import '../../../core/utils/enum/enum.dart';
import '../../../core/utils/loading_helper.dart';
import '../../../core/utils/routes/routes_name.dart';
import 'widgets/drawer_item.dart';

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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        key: _scaffoldKey,
        extendBody: true,
        endDrawer: DrawerItems(logOut: () {
              Navigator.pop(context);
              KUtils.customSimpleDialogue(context, title: 'Logout?',
                  onTapSecond: () {
                context.read<DashboardBloc>().add(Logout());
                Navigator.pop(context);
              }, content: 'Are you sure, you\nwant to logout');
            
        },),
        appBar: AppBar(
          title: Text(
            'Survey',
            style: KStyle.heading(),
          ),
          bottom: TabBar(
            dividerColor: kLight,
            indicatorColor: kWarning,
            unselectedLabelColor: kInActive,
            labelStyle: KStyle.title(),
            labelColor: kWarning,
            tabs: [
              Tab(icon: Icon(Icons.event_note), text: "Scheduled"),
              Tab(icon: Icon(Icons.loop), text: "In Progress"),
              Tab(icon: Icon(Icons.check_circle), text: "Completed"),
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.add)),SizedBox(width: 10),
            GestureDetector(
              onTap: () => _scaffoldKey.currentState?.openEndDrawer(),
              child: CustomAssetImage(
                  height: 50, width: 50, name: ImageAssets.user)
            ),SizedBox(width: 10)
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
            return SafeArea(
                child: TabBarView(
              children: [
                Center(
                    child: Text("Home Screen", style: TextStyle(fontSize: 20))),
                Center(
                    child:
                        Text("Search Screen", style: TextStyle(fontSize: 20))),
                Center(
                    child: Text("Settings Screen",
                        style: TextStyle(fontSize: 20))),
              ],
            ));
          },
        ),
      ),
    );
  }
}