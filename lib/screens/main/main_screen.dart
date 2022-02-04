import 'package:admin/components/side_menu.dart';
// ignore: unused_import
import 'package:admin/constants.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';

import 'Dashboard/Dashboard_main.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          Expanded(
            child: SideMenu(),
          ),
          Expanded(
            flex: Responsive.isLandscape(context) ? 3 : 1,
            child: DashboardScreen(),
          ),
        ],
      )),
    );
  }
}
