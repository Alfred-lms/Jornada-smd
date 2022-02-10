// ignore_for_file: unused_import

import 'package:admin/components/datacards.dart';
import 'package:admin/components/header.dart';
import 'package:admin/components/side_menu.dart';
import 'package:admin/database/classes.dart';
import 'package:admin/database/dbhandler.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';
import 'Dashboard/Dashboard_main.dart';

class Main2test extends StatefulWidget {
  const Main2test({Key? key}) : super(key: key);

  @override
  _Main2testState createState() => _Main2testState();
}

class _Main2testState extends State<Main2test> {
  List<Cadeira> datas = [];
  bool fetching = true;

  late Databasehandler cadeira;
  @override
  void initState() {
    super.initState();
    cadeira = Databasehandler();
    getData2();
  }

  void getData2() async {
    datas = await cadeira.getData();
    setState(() {
      fetching = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          Header(),
        ],
      ),
      drawer: DrawerNavigation(),
      body: fetching
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: datas.length,
              itemBuilder: ((context, index) => DataCard(data: datas[index])),
            ),
    );
  }
}
