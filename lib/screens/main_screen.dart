// ignore_for_file: unused_import

import 'package:admin/components/datacards.dart';
import 'package:admin/components/header.dart';
import 'package:admin/components/side_menu.dart';
import 'package:admin/database/classes.dart';
import 'package:admin/database/dbhandler.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';
import 'Dashboard/Dashboard_main.dart';

// class MainScreen extends StatelessWidget {
//   late Cadeira cadeira;

//   void initDB() {
//     super.initDB();
//     cadeira = Cadeira();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Jornada SMD',
//           style: Theme.of(context).textTheme.headline6,
//         ),
//         backgroundColor: Colors.transparent,
//         actions: <Widget>[
//           Flexible(
//             child: Row(children: [
//               Expanded(
//                 child: Spacer(
//                   flex: 2,
//                 ),
//               ),
//               Expanded(
//                 child: SearchField(),
//               ),
//               Expanded(
//                 child: IconButton(
//                   onPressed: () {},
//                   icon: const Icon(Icons.filter_list_rounded),
//                   iconSize: 40,
//                 ),
//               ),
//             ]),
//           )
//         ],
//       ),
//       drawer: DrawerNavigation(),
//       body: SafeArea(
//           child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           //       Expanded(
//           //         child: SideMenu(),
//           //       ),
//           Expanded(
//             flex: Responsive.isLandscape(context) ? 3 : 1,
//             child: DashboardScreen(),
//           ),
//         ],
//       )),
//     );
//   }
// }

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
      // appBar: AppBar(
      //   title: Text(
      //     'Jornada SMD',
      //     style: Theme.of(context).textTheme.headline6,
      //   ),
      //   backgroundColor: Colors.transparent,
      //   actions: <Widget>[
      //     Flexible(
      //       child: Row(children: [
      //         Container(
      //           width: MediaQuery.of(context).size.width,
      //           child: Spacer(
      //             flex: 2,
      //           ),
      //         ),
      //         Expanded(
      //           child: SearchField(),
      //         ),
      //         Expanded(
      //           child: IconButton(
      //             onPressed: () {},
      //             icon: const Icon(Icons.filter_list_rounded),
      //             iconSize: 40,
      //           ),
      //         ),
      //       ]),
      //     )
      //   ],
      // ),
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
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             //       Expanded(
              //             //         child: SideMenu(),
              //             //       ),
              //             Expanded(
              //               flex: Responsive.isLandscape(context) ? 3 : 1,
              //               child: DashboardScreen(),
              //             ),
              //           ],
            )
          : ListView.builder(
              itemCount: datas.length,
              itemBuilder: ((context, index) => DataCard(data: datas[index])),
            ),
    );
  }
}
