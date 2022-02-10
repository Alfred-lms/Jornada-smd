import 'dart:io';
import 'package:admin/database/classes.dart';
import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Databasehandler {
  Future<Database> getDB() async {
    var dbPath = await getDatabasesPath();
    var path = join(dbPath, 'assets/db/cadeiras.db');
    var exists = await databaseExists(path);
    if (!exists) {
      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (_) {}

      var data = await rootBundle.load(join('assets', 'db', 'cadeiras.db'));
      List<int> bytes = data.buffer.asUint8List(
        data.offsetInBytes,
        data.lengthInBytes,
      );

      await File(path).writeAsBytes(bytes, flush: true);
    }
    return await openDatabase(path);
  }

  Future<bool> insertCadeira(Cadeira cadeiras) async {
    final Database db = await getDB();
    db.insert("cadeiras", cadeiras.toMap());
    return true;
  }

  Future<List<Cadeira>> getData() async {
    final Database db = await getDB();
    final List<Map<String, Object?>> datas = await db.query("cadeiras");
    return datas.map((e) => Cadeira.fromMap(e)).toList();
  }

  Future<bool> updateCadeiraStatus(Cadeira cadeiras) async {
    final Database db = await getDB();
    db.update('cadeiras', cadeiras.toMap(),
        where: 'feita', whereArgs: [cadeiras.feita]);
    return true;
  }

  Future<bool> insertUsuario(Cadeira usuario) async {
    final Database db = await getDB();
    db.insert("usuario", usuario.toMap());
    return true;
  }

  Future<List<Cadeira>> getUserData() async {
    final Database db = await getDB();
    final List<Map<String, Object?>> datas = await db.query("usuario");
    return datas.map((e) => Cadeira.fromMap(e)).toList();
  }
}
