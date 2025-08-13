import 'package:flutter/material.dart';

class AppColors {

  MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    final Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });
    return MaterialColor(color.value, swatch);
  }

  //splash background
  static const Color splashBg = Color(0xFFFAFAFA);

  // Primary colors
  static const Color primary = Color(0xFF860579);
  static const Color primary2 = Color(0xFFF3E6F2);

//Secondary Colors
   static const Color secondary = Color(0xFFF3BC78);
  static const Color secondary2 = Color(0xFFC47411);

  //shadow Colors
  static const Color shadow1= Color(0x42000000);

  // Background colors
  static const Color background1 = Color(0xFFFFFFFF);
  static const Color background2 = Color(0xFFD9EBFF);
  static const Color background3 = Color(0x1A000000);

  // Button colors
  static const Color buttonPrimary = Color(0xFF860579);
  static const Color buttonSecondary = Color(0xFFF3E6F2);
  static const Color buttonDisabled = Color(0xFFB5B3B3);

  // Border colors
  static const Color borderPrimary = Color(0xFF860579);
  static const Color borderSecondary = Color(0xFFB5B3B3);

  //Alert
  static const Color darkGreen = Color(0xFF15B097);
  static const Color lightGreen = Color(0x3415B097);
  static const Color yellow = Color(0xFFFFB916);
  static const Color lightYellow = Color(0xFFFFE9B7);
  static const Color red = Color(0xFFE9635E);
  static const Color darkRed = Color(0xFFFF2A22);
  static const Color lightRed = Color(0xFFFDE2E2);


  // Error and validation colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  // Neutral Shades
  static const Color black = Color(0xFF303030);
  //static const Color darkerGrey = Color(0xFF8A8A8A);
  static const Color darkerGrey = Color(0xFF6B6B6B);
  static const Color darkGrey = Color(0xFF9E9E9E);
  static const Color grey = Color(0x29000000);
  static const Color softGrey = Color(0x1F000000);
  static const Color lightGrey = Color(0xFFEDF1F5 );
  static const Color white = Color(0xFFFAFAFA);
  static const Color white1 = Color(0xFFF1F1F1);
  static const Color grey1=Color.fromRGBO(128, 128, 128, 1);

}