// ignore: unused_import
import 'package:admin/database/dbhandler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            svgSource: 'assets/icons/folder.svg',
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSource,
    required this.press,
  }) : super(key: key);

  final String title, svgSource;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
          onTap: press,
          horizontalTitleGap: 0.0,
          leading: SvgPicture.asset(
            svgSource,
            color: Colors.white,
            height: 18,
          ),
          title: Text(title, style: TextStyle(color: Colors.white70))),
    );
  }
}

class DrawerNavigation extends StatefulWidget {
  @override
  _DrawerNavigationState createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
          child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://scontent.ffor23-1.fna.fbcdn.net/v/t1.18169-9/18892922_1470321599694686_1277618910450094282_n.png?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHAL6LvbLpPHw__3hY83rQ1pZ8NDIlDDDGlnw0MiUMMMbtzO3gfvQPsH3s7enpUjpxTvLGtmNqrcAqWw2CQIXcG&_nc_ohc=TJ_oR4AgRfoAX8rl11-&_nc_ht=scontent.ffor23-1.fna&oh=00_AT95kVe3Vhp5IHzVYeuQFNAUZllJZnFTwkS3q1oLgBOx3g&oe=6228885C'),
            ),
            accountName: Text('Aluno Teste'),
            accountEmail: Text('Matricula'),
          ),
          Expanded(
            child: DrawerListTile(
              title: "Dashboard",
              svgSource: "assets/icons/menu_dashbord.svg",
              press: () {},
            ),
          ),
          Expanded(
            child: DrawerListTile(
              title: "Meu Perfil",
              svgSource: "assets/icons/logo.svg",
              press: () {},
            ),
          ),
        ],
      )),
    );
  }
}
