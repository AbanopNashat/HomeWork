import 'package:flutter/material.dart';
import 'package:toku_flutter_learning/models/coulor.dart';
import 'package:audioplayers/audioplayers.dart';

class ColorsItem extends StatelessWidget {
  const ColorsItem({super.key, required this.coulor});
  final Coulor coulor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color:Color(0xff7D3F9E),
      child: Row(
        children: [
          Container(
            color: Color(0xffFFF4DC),
            child: Image.asset(coulor.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  coulor.JpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  coulor.EnName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
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
                  player.play(AssetSource(coulor.sound));
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
