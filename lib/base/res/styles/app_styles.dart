import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = Color(0xFFeeedf2);
  static Color ticketBlue = const Color(0xFF526799);
  static Color ticketRed = const Color(0xFFEF5350);
  
  static TextStyle textStyle = TextStyle(
    fontSize: 16, color: textColor, fontWeight: FontWeight.w500
  );

  static TextStyle headLineStyle = TextStyle(
                          fontSize: 26, 
                          fontWeight: FontWeight.w500,
                          color: textColor
                        );
  
  static TextStyle headLineStyle2 = TextStyle(
    fontSize: 21, 
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static TextStyle headLineStyle3 = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );               
}