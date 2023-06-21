import 'package:fresh/models/skin_log.model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHandler {
  Future<Database> initializeDatabase() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'fresh.db'),
      onCreate: (database, version) async {
        await database.execute(
          "CREATE TABLE skinlog(id INTEGER PRIMARY KEY AUTOINCREMENT, skinStatus TEXT NOT NULL,dateTime TEXT NOT NULL,email TEXT)",
        );
      },
      version: 1,
    );
  }

  Future<int> addSkinLog(List<SkinLog> skinLogs) async {
    int result = 0;
    final Database db = await initializeDatabase();
    for (var skinLog in skinLogs) {
      result = await db.rawInsert(
          'INSERT INTO skinlog(skinStatus, dateTime, email) VALUES("${skinLog.skinStatus}"," ${skinLog.dateTime.toString()}", "${skinLog.email}")');
    }
    return result;
  }

  Future<List<SkinLog>> retrieveSkinLogs() async {
    final Database db = await initializeDatabase();
    final List<Map<String, Object?>> queryResult =
        await db.rawQuery("SELECT * FROM skinlog");
    return queryResult.map((e) => SkinLog.fromMap(e)).toList();
  }
}
