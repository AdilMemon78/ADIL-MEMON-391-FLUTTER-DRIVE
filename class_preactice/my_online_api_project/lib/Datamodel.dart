import 'dart:convert';

DataModel dataModelFormjson(String str) => DataModel.fromjson(json.decode(str));
String DataModelTojson(DataModel data) => json.encode(data.toJson());

class DataModel {
  final int id;
  final int name;
  final int email;

  const DataModel({required this.id, required this.name, required this.email});
  factory DataModel.fromjson(Map<String, dynamic> myjsonResponce) {
    return DataModel(
        id: myjsonResponce['id'],
        name: myjsonResponce['name'],
        email: myjsonResponce['email']);
  }
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
      };
}
