import 'package:flutter/material.dart';

class AppColors {
  static AppColors? _instance;
  // Avoid self isntance
  AppColors._();
  static AppColors get instance {
    _instance ??= AppColors._();
    return _instance!;
  }

  final Color mineShaft = const Color(0xff272727);
  final Color black = Colors.black;
  final Color desertStorm = const Color(0xffF2F2F1);
  final Color white = Colors.white;
  final Color blue = Colors.blue;
  final Color fountainBlue = const Color(0xff5EA7BA);
}
