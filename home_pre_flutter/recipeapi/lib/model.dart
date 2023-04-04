// import 'dart:convert';

// class photos {
//   final int albumId;
//   final int id;
//   final String title;
//   final String url;
//   final String? turl;

//   const photos(
//       {required this.id,
//       required this.albumId,
//       required this.title,
//       required this.url,
//       required this.turl});

//   factory photos.fromJson(Map<String, dynamic> myjsonResponse) {
//     return photos(
//       id: myjsonResponse['id'],
//       albumId: myjsonResponse['albumId'],
//       title: myjsonResponse['title'],
//       url: myjsonResponse['url'],
//       turl: myjsonResponse['turl'],
//     );
//   }
// }
import 'dart:convert';

List<SamplePhotos> samplePhotosFromMap(String str) => List<SamplePhotos>.from(
    json.decode(str).map((x) => SamplePhotos.fromMap(x)));

String samplePhotosToMap(List<SamplePhotos> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class SamplePhotos {
  SamplePhotos({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  factory SamplePhotos.fromMap(Map<String, dynamic> json) => SamplePhotos(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"],
      );

  Map<String, dynamic> toMap() => {
        "albumId": albumId,
        "id": id,
        "title": title,
        "url": url,
        "thumbnailUrl": thumbnailUrl,
      };
}
