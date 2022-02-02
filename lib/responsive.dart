import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget landscape;

  const Responsive({
    Key key,
    @required this.mobile,
    @required this.landscape,
  }) : super(key: key);

// This size work fine on my design, maybe you need some customization depends on your design

  // This isMobile, isTablet, isDesktop helep us later
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < MediaQuery.of(context).size.height;

  static bool isLandscape(BuildContext context) =>
      MediaQuery.of(context).size.width > MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    // If our width is more than 1100 then we consider it a desktop
    if (_size.width > _size.height) {
      return landscape;
    }
    // Or less then that we called it mobile
    else {
      return mobile;
    }
  }
}
