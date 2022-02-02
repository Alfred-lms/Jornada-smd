import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("assets/images/logo.png"),
            ),
            DrawerListTile(
              title: "Dashboard",
              svgSource: "assets/icons/menu_dashbord.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Meu Perfil",
              svgSource: "assets/icons/unknown.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Arquivos",
              svgSource: "assets/icons/media_file.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Meu Perfil",
              svgSource: "assets/icons/unknown.svg",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key key,
    @required this.title,
    @required this.svgSource,
    @required this.press,
  }) : super(key: key);

  final String title, svgSource;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: press,
        horizontalTitleGap: 0.0,
        leading: SvgPicture.asset(
          svgSource,
          color: Colors.white,
          height: 18,
        ),
        title: Text(title, style: TextStyle(color: Colors.white70)));
  }
}
