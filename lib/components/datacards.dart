// ignore_for_file: unnecessary_import

import 'package:admin/database/classes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataCard extends StatelessWidget {
  const DataCard({Key? key, required this.data}) : super(key: key);
  final Cadeira data;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(Icons.check_box_outline_blank),
        title: Text(
          data.id + " - " + data.nome,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w800,
          ),
        ),
        subtitle: Text(
          'Carga horária' + ' - ' + data.horas.toString() + ' Horas',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        trailing: Column(
          children: [
            if (data.obg == 1) ...[
              Icon(Icons.fiber_manual_record_sharp, color: Colors.red),
            ] else if (data.elt == 1) ...[
              Icon(Icons.fiber_manual_record_sharp, color: Colors.yellow),
            ] else if (data.opt == 1) ...[
              Icon(Icons.fiber_manual_record_outlined, color: Colors.green),
            ]
          ],
        ));
  }
}

// Checkbox pra alterar status de conclusão da cadeira
// class Check extends StatefulWidget {
//   const Check({Key? key, required this.data}) : super(key: key);
//   final Cadeira data;
//   @override
//   _CheckState createState() => _CheckState();
// }

// class _CheckState extends State<Check> {
//   late Cadeira data;
//   late bool isChecked = (data.feita == 0 ? false : true);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Checkbox(
//         activeColor: Colors.green,
//         value: isChecked,
//         onChanged: (isChecked) {
//           setState(() {
//             isChecked == true ? data.feita == 0 : data.feita == 1;
//           });
//         },
//       ),
//     );
//   }
// }
