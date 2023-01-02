import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class Databaseconnection {
  Future<Database> setdatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, 'db_crud');

    var Database =
        await openDatabase(path, version: 1, onCreate: _creatDatabase);

    return Database;
  }

  Future<void> _creatDatabase(Database database, int version) async {
    String sql =
        "CREATE TABLE user(id INTEGER PRIMARY KEY autoincrement,name TEXT,contact TEXT);";

    await database.execute(sql);
  }
}
