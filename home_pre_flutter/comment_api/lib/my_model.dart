class MyModel {
  final int? id;
  final String? name;
  final String? e_mail;
  final String? body;

  // constructor
  const MyModel(
      {required this.id,
      required this.name,
      required this.e_mail,
      required this.body});

  factory MyModel.fromJson(Map<String, dynamic> myjsonResponse) {
    return MyModel(
      id: myjsonResponse['id'],
      name: myjsonResponse['name'],
      e_mail: myjsonResponse['email'],
      body: myjsonResponse['body'],
    );
  }
}
