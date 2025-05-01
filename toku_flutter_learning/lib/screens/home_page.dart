import 'package:flutter/material.dart';
import 'package:toku_flutter_learning/components/category.dart';
import 'package:toku_flutter_learning/screens/colors_page.dart';
import 'package:toku_flutter_learning/screens/family_members_page.dart';
import 'package:toku_flutter_learning/screens/numbers_page.dart';
import 'package:toku_flutter_learning/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF4DA),
      appBar: AppBar(
        title: Text("Toku",
            style: TextStyle(
              color: Colors.white,
            )),
        backgroundColor: Color(0xff49332B),
      ),
      body: Column(
        children: [
          Category(
            text: "Numbers",
            color: Color(0xffF99537),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return NumbersPage();
              }));
            },
          ),
          Category(
            text: "Family Members",
            color: Color(0xff528135),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return FamilyMembersPage();
              }));
            },
          ),
          Category(
            text: "Colors",
            color: Color(0xff7D3F9E),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return ColorsPage();
              }));
            },
          ),
          Category(
            text: "Phrases",
            color: Color(0xff47A5C8),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return PhrasesPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}
