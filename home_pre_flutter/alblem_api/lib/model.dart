class MyModel {
  final int? userId;
  final int? id;
  final String title;

  const MyModel({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory MyModel.fromJson(Map<String, dynamic> myjsonResponse) {
    return MyModel(
      userId: myjsonResponse['userId'],
      id: myjsonResponse['id'],
      title: myjsonResponse['title'],
    );
  }
}
