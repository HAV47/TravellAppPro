import 'package:flutter/material.dart';

class ColorPalatte {
  static const Color primaryColor = Color(0xff6357CC);
  static const Color secondColor = Color(0xff8F67E8);
  static const Color yellowColor = Color(0xffFE9C5E);
  static const Color dividerColor = Color(0xFFE5E7EB);
  static const Color textColor = Color(0xFF323B4B);
  static const Color subTitleColor = Color(0xFFB38383);
  static const Color backgroundScaffoldColor = Color(0xFFF2F2F2);

}
class Gradients {
  static const Gradient defaultGradientBackground = LinearGradient(
begin: Alignment.topLeft,
end: Alignment.bottomLeft,
    colors: [
      ColorPalatte.secondColor,
      ColorPalatte.primaryColor,
    ]
  );
}

