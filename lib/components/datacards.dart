import 'package:admin/database/classes.dart';
import 'package:flutter/material.dart';

class DataCard extends StatelessWidget {
  const DataCard({Key key, @required this.data}) : super(key: key);
  final Cadeira data;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(),
      title: Text(data.id),
      subtitle: Text(data.nome),
      trailing: CircleAvatar(),
    );
  }
}
