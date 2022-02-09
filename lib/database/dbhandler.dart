import 'package:admin/database/classes.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Databasehandler {
  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'cadeiras.sqlite'),
      onCreate: (database, version) async {
        await database.execute(
            "CREATE TABLE cadeira (id TEXT PRIMARY KEY, nome TEXT NOT NULL, horas INTEGER NOT NULL, obg INTEGER, elt INTEGER, opt INTEGER, feita INTEGER");
      },
      version: 1,
    );
  }

  Future<void> insertCadeira(List<Cadeira> cadeiras) async {
    final Database db = await initializeDB();
    for (var cadeira in cadeiras) {
      await db.insert('cadeiras', cadeira.toMap());
    }
  }

  Future<void> deleteCadeira(int id) async {
    final db = await initializeDB();
    await db.delete(
      'cadeira',
      where: "id = ?",
      whereArgs: [id],
    );
  }

  Future<void> updateCadeira(int id, int feita) async {
    final db = await initializeDB();
    await db.update(
      'cadeiras',
      {'cadeiras': 0},
      where: 'feita = ?',
      whereArgs: [feita],
    );
  }
}
