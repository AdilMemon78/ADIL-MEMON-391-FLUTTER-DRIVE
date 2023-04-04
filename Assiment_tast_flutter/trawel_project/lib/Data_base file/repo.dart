import 'package:sqflite/sqlite_api.dart';
import 'package:trawel_project/Data_base%20file/connection.dart';

class Repository {
  late DatabaseConnection _databaseConnection;
  Repository() {
    _databaseConnection = DatabaseConnection();
  }

  static Database? _database;
  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    } else {
      _database = await _databaseConnection.setDatabase();
      return _database;
    }
  }

// to store data in database

  insertData(table, data) async {
    var connection = await database;
    print("insert method call-------");
    return await connection?.insert(table, data);
  }

// read data
  readData(table) async {
    var connection = await database;
    return await connection?.query(table);
  }

  readSpecificData(table, itemID) async {
    var connection = await database;
    return await connection!.query(table, whereArgs: [itemID]);
  }

  updateData(table, data) async {
    var connection = await database;
    return await connection!.update(table, data, whereArgs: [data["id"]]);
  }

  deleteData(table, itemid) async {
    var connection = await database;

    return await connection!.delete(table, whereArgs: itemid);
  }
}
