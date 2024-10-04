// import 'package:flutter/material.dart';

// class CustomFontStyle {
//   static const double textFontSize = 16.0;
//   static const TextStyle regularTextStyle = TextStyle(fontSize: textFontSize);

//   static const double titleFontSize = 20.0;
//   static const TextStyle bodyTextStyle = TextStyle(fontSize: titleFontSize);

//   static const double textsmallFontSize = 14.0;
//   static const TextStyle smallTextStyle =
//       TextStyle(fontSize: textsmallFontSize);
// }

import 'package:flutter/material.dart';

class CustomFontStyle {
  const CustomFontStyle();

  final TextStyle titleMedium = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 28,
    color: Colors.greenAccent,
  );

  final TextStyle bodyMedium = const TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 14,
    color: Colors.black87,
  );
}

extension TextStyleExt on TextStyle {
  /// set fontSize to [fontSize]
  TextStyle fs(double fontSize) => copyWith(fontSize: fontSize);

  /// set Color to [color]
  TextStyle cl(Color color) => copyWith(color: color);
}
