import 'package:flutter/material.dart';

class CustomAddIcon extends StatelessWidget {
  const CustomAddIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xffDDE3E1),
        borderRadius: BorderRadius.circular(64),
      ),
      child: Icon(Icons.add),
    );
  }
}
