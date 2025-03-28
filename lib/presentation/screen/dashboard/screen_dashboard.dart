//----------theme data--------//
// this variable is the primary prior in this app
//theme data will change based of this variable value
//depend on bottom bar index

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:functions/core/res/asset/image_asset.dart';
import 'package:functions/core/res/components/custom_asset_image.dart';
import 'package:functions/core/res/styles.dart';
import 'package:functions/core/utils/utils.dart';
import 'package:functions/presentation/screen/dashboard/dashboard_bloc/dashboard_bloc.dart';

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
              Tab(icon: Icon(Icons.check_circle), text: "Completed"),
              Tab(icon: Icon(Icons.loop), text: "In Hold"),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, KRoutesName.survey).then((_) {
                    context.read<DashboardBloc>().add(const GetSurveyList());
                  });
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: SizedBox(
                    child: state.sureyList.isEmpty
                        ? Center(
                            child: Text('School detail is not added',
                                style: KStyle.title()))
                        : ListView.separated(
                            separatorBuilder: (context, index) =>
                                KUtils.commonDivider(),
                            itemCount: state.sureyList.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, KRoutesName.addSurvey,
                                      arguments: state.sureyList[index]);
                                },
                                title: Text(state.sureyList[index].schoolName,style: KStyle.heading()),
                                leading: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: kWarning,
                                    child: Text(state.sureyList[index].id,
                                        style: KStyle.content())),
                                subtitle: Text(state.sureyList[index].place),
                                trailing:
                                    const Icon(Icons.arrow_forward_ios_outlined),
                              );
                            },
                          ),
                  ),
                ),
                SizedBox(
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        KUtils.commonDivider(),
                    itemCount: state.completedList.length,
                    itemBuilder: (context, index) {
                      return state.completedList.isEmpty
                          ? Center(
                              child: Text('Survey is not completed yet',
                                  style: KStyle.title()))
                          : ListTile(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, KRoutesName.addSurvey,
                                    arguments: state.completedList[index]);
                              },
                              title:
                                  Text(state.completedList[index].schoolName),
                              leading: CircleAvatar(
                                  backgroundColor: kWarning,
                                  child: Text(state.completedList[index].id)),
                              subtitle: Text(state.completedList[index].place),
                              trailing:
                                  const Icon(Icons.arrow_forward_ios_outlined),
                            );
                    },
                  ),
                ),
                SizedBox(
                  child: state.inHoldList.isEmpty
                      ? Center(
                          child: Text(
                          'No holding survey yet',
                          style: KStyle.title(),
                        ))
                      : ListView.separated(
                          separatorBuilder: (context, index) =>
                              KUtils.commonDivider(),
                          itemCount: state.inHoldList.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, KRoutesName.addSurvey,
                                    arguments: state.inHoldList[index]);
                              },
                              title: Text(state.inHoldList[index].schoolName),
                              leading: CircleAvatar(
                                  backgroundColor: kWarning,
                                  child: Text(state.inHoldList[index].id)),
                              subtitle: Text(state.inHoldList[index].place),
                              trailing:
                                  const Icon(Icons.arrow_forward_ios_outlined),
                            );
                          },
                        ),
                ),
              ],
            ));
          },
        ),
      ),
    );
  }
}
