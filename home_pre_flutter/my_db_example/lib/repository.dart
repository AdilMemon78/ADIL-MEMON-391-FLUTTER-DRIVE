import 'package:flutter/material.dart';
import 'package:my_db_example/DataBase_connection.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqflite.dart';

class Repository {
  late var databaseconnection = Databaseconnection();

  Repository() {
    databaseconnection = Databaseconnection();
  }
  static Database? _database;
  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    } else {
      _database = await databaseconnection.setdatabase();
      return _database;
    }
  }

  insertData(tablename, data) async {
    var db = await _database;
    return await db?.insert(tablename, data);
  }

  getallData(tablename) async {
    var con = await _database;
    return con?.query("select * from $tablename");
  }

  getSpecificData(tablename, data) async {
    var db = await _database;
    return db?.query(tablename,
        columns: ['id', 'name', 'contact'],
        where: "id = ?",
        whereArgs: [data['id']]);
  }

  updateData(tablename, mydata) async {
    var db = await _database;
    return db
        ?.update(tablename, mydata, where: "id = ?", whereArgs: [mydata['id']]);
  }
}
