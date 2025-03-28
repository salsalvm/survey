

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/res/colors.dart';
import '../../../../core/utils/utils.dart';
import '../dashboard_bloc/dashboard_bloc.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({
    super.key,this.logOut
  });
  final void Function()? logOut;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: kWarning),
            child: Center(
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: kBlack),
            title: Text('Home', style: TextStyle(fontSize: 18)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, color: kBlack),
            title: Text('Settings', style: TextStyle(fontSize: 18)),
            onTap: () {
              Navigator.pop(context); // Close drawer
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.red),
            title: Text('Logout',
                style: TextStyle(fontSize: 18, color: Colors.red)),
            onTap: logOut,
          ),
        ],
      ),
    );
  }
}
