import 'package:api_image_url/fatch_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapi_image());
}

class Myapi_image extends StatefulWidget {
  const Myapi_image({Key? key}) : super(key: key);

  @override
  State<Myapi_image> createState() => _Myapi_imageState();
}

class _Myapi_imageState extends State<Myapi_image> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FetchPictureListView(),
    );
  }
}
