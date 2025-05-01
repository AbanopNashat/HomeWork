import 'package:flutter/material.dart';
import 'package:toku_flutter_learning/components/phrases_item.dart';
import 'package:toku_flutter_learning/models/phrases.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<Phrases> phrases = const [
    Phrases(
        EnText: "I love Anime",
        JpText: "Watashi wa anime ga daisukidesu",
        sound: "sounds/phrases/i_love_anime.wav"),
    Phrases(
        EnText: "I love Anime",
        JpText: "Watashi wa anime ga daisukidesu",
        sound: "sounds/phrases/i_love_anime.wav"),
    Phrases(
        EnText: "I love Anime",
        JpText: "Watashi wa anime ga daisukidesu",
        sound: "sounds/phrases/i_love_anime.wav"),
    Phrases(
        EnText: "I love Anime",
        JpText: "Watashi wa anime ga daisukidesu",
        sound: "sounds/phrases/i_love_anime.wav"),
    Phrases(
        EnText: "I love Anime",
        JpText: "Watashi wa anime ga daisukidesu",
        sound: "sounds/phrases/i_love_anime.wav"),
    Phrases(
        EnText: "I love Anime",
        JpText: "Watashi wa anime ga daisukidesu",
        sound: "sounds/phrases/i_love_anime.wav"),
    Phrases(
        EnText: "I love Anime",
        JpText: "Watashi wa anime ga daisukidesu",
        sound: "sounds/phrases/i_love_anime.wav"),
    Phrases(
        EnText: "I love Anime",
        JpText: "Watashi wa anime ga daisukidesu",
        sound: "sounds/phrases/i_love_anime.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Phrases",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff463126),
      ),
      body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (BuildContext context, index) {
            return PhrasesItem(phrase: phrases[index]);
          }),
    );
  }
}
