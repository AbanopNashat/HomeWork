import 'package:flutter/material.dart';
import 'package:toku_flutter_learning/models/family.dart';
import 'package:audioplayers/audioplayers.dart';

class FamilyItem extends StatelessWidget {
  const FamilyItem({super.key, required this.member});
  final Family member;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Color(0xff528135),
      child: Row(
        children: [
          Container(
            color: Color(0xffFFF4DC),
            child: Image.asset(member.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  member.JpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  member.EnName,
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
                  player.play(AssetSource(member.sound));
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
