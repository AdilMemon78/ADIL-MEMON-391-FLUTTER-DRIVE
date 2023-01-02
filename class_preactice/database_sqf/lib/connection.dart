import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'main.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseConnection {
  Future<Database> setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, "mydb");
    var database = openDatabase(path, version: 1, onCreate: createDatabase);
    return database;
  }

  Future<void> createDatabase(Database database, int version) async {
    print("=====database call");
    String sql =
        "create table mytable (id INTEGER PRIMARY KEY auto_increment, name TEXT, contect TEXT )";

    await database.execute(sql);
  }
}
