import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Text(
              "Sua Jornada SMD!",
              style: Theme.of(context).textTheme.headline6,
            ),
            Spacer(),
            Expanded(
                child: TextField(
                    decoration: InputDecoration(
              fillColor: secondaryColor,
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            )))
          ],
        ),
      ),
    );
  }
}
