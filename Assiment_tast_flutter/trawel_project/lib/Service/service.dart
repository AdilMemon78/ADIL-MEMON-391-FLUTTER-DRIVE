import '../User/user.dart';
import '../repo/repo.dart';



class UserService {
  late Repository _repository;

  UserService() {
    _repository = Repository();
  }

  saveData(User user) async {
    return await _repository.insertData("mytable", user.userMap());
  }

  readAllData() {
    return _repository.readData("mytable");
  }

  updateData(User user) {
    return _repository.updateData("mytable", user.userMap());
  }

  deleteData(userid) {
    return _repository.deleteData("mytable", userid);
  }
}
