import 'package:flutter/material.dart';

class patang_photo extends StatefulWidget {
  const patang_photo({super.key});

  @override
  State<patang_photo> createState() => _patang_photoState();
}

class _patang_photoState extends State<patang_photo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          "Hotels Photos",
          style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Hotels",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMVLNevuxiE6aWzYaJVdPAQINxsmPnJaXbVA&usqp=CAU",
                    width: 180,
                    height: 100,
                  ),
                ),
                Container(
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa8dzSliyB5ZdHOiQEGAGzGct0xzaKjzsiaw&usqp=CAU",
                    width: 180,
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa8dzSliyB5ZdHOiQEGAGzGct0xzaKjzsiaw&usqp=CAU",
                    width: 180,
                    height: 100,
                  ),
                ),
                Container(
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMVLNevuxiE6aWzYaJVdPAQINxsmPnJaXbVA&usqp=CAU",
                    width: 180,
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Rooms",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIm37k4evdK1hNyCScsZiIn1GMm7BXeDjCdQ&usqp=CAU",
                    width: 180,
                    height: 100,
                  ),
                ),
                Container(
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL8UBg-sszg93quGn5a9j52cF6Wf1SpVCdyQ&usqp=CAUhttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL8UBg-sszg93quGn5a9j52cF6Wf1SpVCdyQ&usqp=CAU",
                    width: 180,
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2GxSfw8mstr4yI9knW0MYUJGxJ4WZS0-NCA&usqp=CAU",
                    width: 180,
                    height: 100,
                  ),
                ),
                Container(
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQil10U5m08n4W3tSz4G2w9oFHmcrKMTTDz4A&usqp=CAU",
                    width: 180,
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Dining",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGjJK3cAWWw3dmIT4oOaFylUXfIYotWeCLMA&usqp=CAU",
                    width: 180,
                    height: 100,
                  ),
                ),
                Container(
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTTbCMDV8gE0b2JKzgA-Lf8mxrew8GyXy5wA&usqp=CAU",
                    width: 180,
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
