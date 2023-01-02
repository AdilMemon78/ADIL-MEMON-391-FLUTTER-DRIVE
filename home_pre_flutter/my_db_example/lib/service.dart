import 'package:flutter/material.dart';
import 'package:my_db_example/repository.dart';
import 'package:my_db_example/user.dart';

class services {
  late Repository _repository;

  services() {
    _repository = Repository();
  }

  saveUser(user user) async {
    return await _repository.insertData("user", user.userMap());
  }

  getallUser() async {
    return await _repository.getallData("User");
  }

  getSpecificData(user user) async {
    return await _repository.getSpecificData("user", user.userMap());
  }
}
