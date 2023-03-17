import 'package:flutter/material.dart';
import 'package:podcast_app/homepage.dart';
import 'package:podcast_app/podcast_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          backgroundColor: Colors.black,
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Color.fromARGB(255, 233, 220, 220)),
            bodyText2: TextStyle(color: Color.fromARGB(255, 233, 220, 220)),
          )),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/podcastplayer': (context) => PodcastPlayer(),
      },
    );
  }
}
