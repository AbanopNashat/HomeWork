import 'package:flutter/material.dart';
abstract class AppTextStyle{

  static TextStyle medium24({Color? color}) {
    return TextStyle(
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.bold,
      fontSize: 24,
      color: color ?? Colors.white,
    );
  }


  static TextStyle medium18({Color? color}) {
    return  TextStyle(
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: color ?? Colors.white,
    );
  }


  static TextStyle regular16({Color? color}) {
    return TextStyle(
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.bold, // Regular
      fontSize: 16,
      color: color ?? Colors.white,
    );
  }


  static TextStyle regular12({Color? color}) {
    return TextStyle(
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.bold, // Regular
      fontSize: 12,
      color: color ?? Colors.white,
    );
  }

}
