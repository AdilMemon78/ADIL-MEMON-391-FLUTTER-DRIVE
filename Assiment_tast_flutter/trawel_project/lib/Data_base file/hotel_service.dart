import 'package:trawel_project/Data_base%20file/repo.dart';

import 'hotelModel.dart';

class HotelService {
  late Repository _repository;

  HotelService() {
    _repository = Repository();
  }

  saveData(Hotel hotel) async {
    return await _repository.insertData("mytable", hotel.HotelMap());
  }

  readAllData() {
    return _repository.readData("mytable");
  }

  updateData(Hotel hotel) {
    return _repository.updateData("mytable", hotel.HotelMap());
  }

  deleteData(hotelId) {
    return _repository.deleteData("mytable", hotelId);
  }
}
