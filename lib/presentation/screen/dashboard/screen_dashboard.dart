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
  void initState() {
    context.read<DashboardBloc>().add(const GetSurveyList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        key: _scaffoldKey,
        extendBody: true,
        endDrawer: DrawerItems(
          logOut: () {
            Navigator.pop(context);
            KUtils.customSimpleDialogue(context, title: 'Logout?',
                onTapSecond: () {
              context.read<DashboardBloc>().add(const Logout());
              Navigator.pop(context);
            }, content: 'Are you sure, you\nwant to logout');
          },
        ),
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
            tabs: const [
              Tab(icon: Icon(Icons.event_note), text: "Scheduled"),
              Tab(icon: Icon(Icons.loop), text: "In Progress"),
              Tab(icon: Icon(Icons.check_circle), text: "Completed"),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, KRoutesName.survey);
                },
                icon: const Icon(Icons.add)),
            const SizedBox(width: 10),
            GestureDetector(
                onTap: () => _scaffoldKey.currentState?.openEndDrawer(),
                child: const CustomAssetImage(
                    height: 50, width: 50, name: ImageAssets.user)),
            const SizedBox(width: 10)
          ],
        ),
        backgroundColor: kWhite,
        body: BlocConsumer<DashboardBloc, DashboardState>(
          listener: (context, state) {
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
                SizedBox(
                  child: ListView.builder(
                    itemCount: state.sureyList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(state.sureyList[index].schoolName),
                        leading: Text(state.sureyList[index].id),
                        subtitle: Text(state.sureyList[index].id),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                      );
                    },
                  ),
                ),
                Container(),
                Container(),
              ],
            ));
          },
        ),
      ),
    );
  }
}
