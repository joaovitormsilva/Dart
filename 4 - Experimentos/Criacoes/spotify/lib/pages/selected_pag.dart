import 'package:flutter/material.dart';

class DetalhesAlbum extends StatelessWidget {
  final String album;
  final String image;
  const DetalhesAlbum({Key? key, required this.album, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(album)),
        body: Column(
          children: [
            Text(
              "Album é $album",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            Image.network(
              image,
              width: 100,
              height: 100,
            )
          ],
        ));
  }
}
