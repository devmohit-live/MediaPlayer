import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Media Player'),
          leading: Icon(Icons.perm_media),
          backgroundColor: Colors.deepOrange.shade500),
      body: Container(
        padding: EdgeInsets.all(20.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.amber.shade600,
          // border: Border.all(color: Colors.deepOrange.shade700, width: 5),
          // borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  border: Border.all(color: Colors.deepOrange, width: 5),
                  image: DecorationImage(
                      image: Image.asset('assets/images/me.jpg').image)),
            ),
            Card(
              color: Colors.pinkAccent,
              elevation: 8,
              child: FlatButton.icon(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/audio');
                  },
                  icon: Icon(Icons.music_note),
                  label: Text('Start Audio Player')),
            ),
            Card(
              elevation: 8,
              color: Colors.blueAccent,
              child: FlatButton.icon(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/video');
                  },
                  icon: Icon(Icons.ondemand_video),
                  label: Text('Start Video Player')),
            )
          ],
        ),
      ),
    );
  }
}
