import 'package:flutter/material.dart';

class MyVideoPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
            title: Text('Video Player'),
            leading: Icon(Icons.perm_media),
            backgroundColor: Colors.deepOrange.shade500),
      ),
    );
  }
}
