import 'dart:html';

import 'package:admin/constants.dart';
import 'package:flutter/material.dart';
import 'package:admin/components/header.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // body: ?
      // Center(
      //   child: CircularProgressIndicator(),
      // ): ListView.builder(itemBuilder: (context,index))
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
