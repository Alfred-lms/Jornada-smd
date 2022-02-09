import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget landscape;

  const Responsive({
    Key key,
    @required this.mobile,
    @required this.landscape,
  }) : super(key: key);

  // This isMobile, isLandscape helep us later
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < MediaQuery.of(context).size.height;

  static bool isLandscape(BuildContext context) =>
      MediaQuery.of(context).size.width > MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    // If our width is more than our height we consider it a landscape
    if (_size.width > _size.height) {
      return landscape;
    }
    // Or less then that we called it portrait
    else {
      return mobile;
    }
  }
}
