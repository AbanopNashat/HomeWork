import 'package:flutter/material.dart';
import 'package:toku_flutter_learning/components/colors_item.dart';
import 'package:toku_flutter_learning/models/coulor.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Coulor> colors = const [
      Coulor(
          EnName: "Black",
          JpName: "Kuro",
          image: "assets/images/colors/color_black.png",
          sound: "sounds/colors/black.wav"),
      Coulor(
          EnName: "Black",
          JpName: "Kuro",
          image: "assets/images/colors/color_black.png",
          sound: "sounds/colors/black.wav"),
      Coulor(
          EnName: "Black",
          JpName: "Kuro",
          image: "assets/images/colors/color_black.png",
          sound: "sounds/colors/black.wav"),
      Coulor(
          EnName: "Black",
          JpName: "Kuro",
          image: "assets/images/colors/color_black.png",
          sound: "sounds/colors/black.wav"),
      Coulor(
          EnName: "Black",
          JpName: "Kuro",
          image: "assets/images/colors/color_black.png",
          sound: "sounds/colors/black.wav"),
      Coulor(
          EnName: "Black",
          JpName: "Kuro",
          image: "assets/images/colors/color_black.png",
          sound: "sounds/colors/black.wav"),
      Coulor(
          EnName: "Black",
          JpName: "Kuro",
          image: "assets/images/colors/color_black.png",
          sound: "sounds/colors/black.wav"),
      Coulor(
          EnName: "Black",
          JpName: "Kuro",
          image: "assets/images/colors/color_black.png",
          sound: "sounds/colors/black.wav"),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Colors",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff463126),
      ),
      body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (BuildContext context, index) {
            return ColorsItem(coulor: colors[index]);
          }),
    );
  }
}
