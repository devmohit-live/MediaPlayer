import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/audioPlayer.dart';
import 'screens/videoplayer.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

void main() => runApp(MyAppContext());

class MyAppContext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // FlutterStatusbarcolor.setNavigationBarColor(Colors.deepOrange);
    FlutterStatusbarcolor.setStatusBarColor(Colors.deepOrange.shade300);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Home(),
        '/audio': (context) => MyAudioPlayer(),
        '/video': (context) => MyVideoPlayer()
      },
      initialRoute: '/',
    );
  }
}
