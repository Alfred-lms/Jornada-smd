import 'package:admin/components/header.dart';
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
      appBar: AppBar(
        title: Text(
          'Jornada SMD',
          style: Theme.of(context).textTheme.headline6,
        ),
        backgroundColor: secondaryColor,
        actions: <Widget>[
          Flexible(
            child: Row(children: [
              Expanded(
                child: Spacer(
                  flex: 2,
                ),
              ),
              Expanded(
                child: SearchField(),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.filter_list_rounded),
                  iconSize: 40,
                ),
              ),
            ]),
          )
        ],
      ),
      drawer: DrawerNavigation(),
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //       Expanded(
          //         child: SideMenu(),
          //       ),
          Expanded(
            flex: Responsive.isLandscape(context) ? 3 : 1,
            child: DashboardScreen(),
          ),
        ],
      )),
    );
  }
}
