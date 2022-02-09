import 'package:admin/database/classes.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Databasehandler {
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'cadeiras.sqlite'),
      onCreate: (database, version) async {
        await database.execute("""
CREATE TABLE cadeira (
  id TEXT PRIMARY KEY,
  nome TEXT NOT NULL,
  horas INTEGER NOT NULL,
  obg INTEGER, 
  elt INTEGER,
  opt INTEGER,
  feita INTEGER
  )
""");
      },
      version: 1,
    );
  }

  Future<bool> insertCadeira(Cadeira cadeiras) async {
    final Database db = await initDB();
    db.insert("cadeiras", cadeiras.toMap());
    return true;
  }

  Future<List<Cadeira>> getData() async {
    final Database db = await initDB();
    final List<Map<String, Object>> datas = await db.query("cadeiras");
    return datas.map((e) => Cadeira.fromMap(e)).toList();
  }
}
