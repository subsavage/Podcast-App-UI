import 'package:flutter/material.dart';

class PodcastPlayer extends StatelessWidget {
  static const routeName = '/podcastplayer';
  const PodcastPlayer({super.key});

  Widget _player() {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: SizedBox(
                      height: 5,
                      child: LinearProgressIndicator(
                        value: 10,
                        semanticsLabel: 'Player',
                        color: Colors.white12,
                      )),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 143, 138, 138),
                ),
                child: Icon(
                  Icons.play_arrow_sharp,
                  size: 75,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 204, 204),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Container(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                  height: 500,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 241, 223, 223),
                        offset: Offset(
                          -5.0,
                          -5.0,
                        ),
                        spreadRadius: 1,
                        blurRadius: 15,
                      ),
                      BoxShadow(
                        color: Colors.grey.shade600,
                        offset: Offset(
                          5.0,
                          5.0,
                        ),
                        spreadRadius: 1,
                        blurRadius: 15,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 25),
                  child: Column(
                    children: [
                      _player(),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
