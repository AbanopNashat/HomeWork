import 'package:flutter/material.dart';
import 'package:toku_flutter_learning/components/family_item.dart';
import 'package:toku_flutter_learning/models/family.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List<Family> members = const [
    Family(
      EnName: "Father",
      JpName: "Chichioya",
      image: "assets/images/family_members/family_father.png",
      sound: "sounds/family_members/father.wav",
    ),
    Family(
      EnName: "Mother",
      JpName: "Hahaoya",
      image: "assets/images/family_members/family_mother.png",
      sound: "sounds/family_members/mother.wav",
    ),
    Family(
        EnName: "Son",
        JpName: "Musuko",
        image: "assets/images/family_members/family_son.png",
        sound: "sounds/family_members/son.wav"),
    Family(
        EnName: "Daughter",
        JpName: "Musume",
        image: "assets/images/family_members/family_daughter.png",
        sound: "sounds/family_members/daughter.wav"),
    Family(
      EnName: "Father",
      JpName: "Chichioya",
      image: "assets/images/family_members/family_father.png",
      sound: "sounds/family_members/father.wav",
    ),
    Family(
      EnName: "Father",
      JpName: "Chichioya",
      image: "assets/images/family_members/family_father.png",
      sound: "sounds/family_members/father.wav",
    ),
    Family(
      EnName: "Father",
      JpName: "Chichioya",
      image: "assets/images/family_members/family_father.png",
      sound: "sounds/family_members/father.wav",
    ),
    Family(
      EnName: "Father",
      JpName: "Chichioya",
      image: "assets/images/family_members/family_father.png",
      sound: "sounds/family_members/father.wav",
    ),
    Family(
      EnName: "Father",
      JpName: "Chichioya",
      image: "assets/images/family_members/family_father.png",
      sound: "sounds/family_members/father.wav",
    ),
    Family(
      EnName: "Father",
      JpName: "Chichioya",
      image: "assets/images/family_members/family_father.png",
      sound: "sounds/family_members/father.wav",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Family Members",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff463126),
      ),
      body: ListView.builder(
          itemCount: members.length,
          itemBuilder: (context, index) {
            return FamilyItem(member: members[index]);
          }),
    );
  }
}
