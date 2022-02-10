import 'package:admin/database/classes.dart';
import 'package:flutter/material.dart';

class DataCard extends StatelessWidget {
  const DataCard({Key? key, required this.data}) : super(key: key);
  final Cadeira data;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(),
      title: Text(
        data.id + " - " + data.nome,
        style: TextStyle(fontSize: 16),
      ),
      subtitle: Text(
        'Carga horária' + ' - ' + data.horas.toString() + ' Horas',
        style: TextStyle(fontSize: 10),
      ),
      trailing: CircleAvatar(),
    );
  }
}
