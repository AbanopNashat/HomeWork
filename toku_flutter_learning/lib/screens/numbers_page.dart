import 'package:flutter/material.dart';
import 'package:toku_flutter_learning/components/Num_Item.dart';
import 'package:toku_flutter_learning/models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Number> numbers = const [
    Number(
        image: "assets/images/numbers/number_one.png",
        enName: "one",
        jpName: "ichi",
        sound: "sounds/numbers/number_one_sound.mp3"),
    Number(
        image: "assets/images/numbers/number_two.png",
        enName: "two",
        jpName: "ni",
        sound:"sounds/numbers/number_two_sound.mp3" ),
    Number(
        image: "assets/images/numbers/number_three.png",
        enName: "three",
        jpName: "San",
        sound: "sounds/numbers/number_three_sound.mp3"),
    Number(
        image: "assets/images/numbers/number_four.png",
        enName: "four",
        jpName: "Shi",
        sound: "sounds/numbers/number_four_sound.mp3"),
    Number(
        image: "assets/images/numbers/number_five.png",
        enName: "five",
        jpName: "Go",
        sound: "sounds/numbers/number_five_sound.mp3"),
    Number(
        image: "assets/images/numbers/number_six.png",
        enName: "Six",
        jpName: "Roku",
        sound: "sounds/numbers/number_six_sound.mp3"),
    Number(
        image: "assets/images/numbers/number_seven.png",
        enName: "Seven",
        jpName: "sebun",
        sound:"sounds/numbers/number_seven_sound.mp3" ),
    Number(
        image: "assets/images/numbers/number_eight.png",
        enName: "Eight",
        jpName: "Hachi",
        sound:"sounds/numbers/number_eight_sound.mp3" ),
    Number(
        image: "assets/images/numbers/number_nine.png",
        enName: "nine",
        jpName: "Kyū",
        sound: "sounds/numbers/number_nine_sound.mp3"),
    Number(
        image: "assets/images/numbers/number_ten.png",
        enName: "ten",
        jpName: "Jū",
        sound:"sounds/numbers/number_ten_sound.mp3" ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff463126),
        title: Text(
          "Numbers",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return Num_Item(number: numbers[index]);
          }),
    );
  }

  List<Widget> getList(List<Number> numbers) {
    List<Widget> itemsList = [];
    for (int i = 0; i < numbers.length; i++) {
      itemsList.add(Num_Item(number: numbers[i]));
    }
    return itemsList;
  }
}
