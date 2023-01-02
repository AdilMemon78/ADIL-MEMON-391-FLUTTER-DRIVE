class Mymodelimage {
  final int albumId;
  final int Id;
  final int title;
  final int url;
  final int thumbnailurl;

  const Mymodelimage({
    required this.albumId,
    required this.Id,
    required this.title,
    required this.url,
    required this.thumbnailurl,
  });

  factory Mymodelimage.fromJson(Map<String, dynamic> myjsonResponce) {
    return Mymodelimage(
      albumId: myjsonResponce['albumId'],
      Id: myjsonResponce['Id'],
      title: myjsonResponce['title'],
      url: myjsonResponce['url'],
      thumbnailurl: myjsonResponce['thumbnailurl'],
    );
  }
}
