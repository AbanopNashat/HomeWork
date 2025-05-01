import 'package:flutter/material.dart';
import 'package:toku_flutter_learning/models/family.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:toku_flutter_learning/models/phrases.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.phrase});
  final Phrases phrase;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Color(0xff47A5C8),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.JpText,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  phrase.EnText,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
              padding: const EdgeInsets.only(right: 16),
              child: IconButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(phrase.sound));
                },
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 24,
                ),
              )),
        ],
      ),
    );
  }
}
