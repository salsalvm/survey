import 'package:flutter/material.dart';

import 'colors.dart';

// our project evey text style is hard coded
// Basically 3 styles :title , content &  heading

class KStyle {
  //---------------content text style---------------//
  static TextStyle content({
    double size = 12,
    double? lineHeight,
    double? letterSpace,
    FontStyle? fontStyle,
    FontWeight fontWeight = FontWeight.w500,
    Color color = kBlack,
    TextOverflow? overFlow = TextOverflow.ellipsis,
    TextDecoration decoration = TextDecoration.none,
  }) {
    return TextStyle(
        color: color,
        fontSize: size,
        decoration: decoration,
        fontFamily: 'Inter_Regular',
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        height: lineHeight,
        letterSpacing: letterSpace,
        overflow: overFlow);
  }

//---------------title text style---------------//
  static TextStyle title({
    double size = 14,
    FontWeight fontWeight = FontWeight.w500,
    Color color = kBlack,
    double? lineHeight,
    double letterSpace = 0.2,
    TextDecoration decoration = TextDecoration.none,
  }) {
    return TextStyle(
        color: color,
        fontSize: size,
        decoration: decoration,
        fontFamily: 'Inter_Regular',
        fontWeight: fontWeight,
        height: lineHeight,
        letterSpacing: letterSpace,
        overflow: TextOverflow.ellipsis);
  }

  static TextStyle titleBold({
    double size = 14,
    FontWeight fontWeight = FontWeight.w800,
    Color color = kBlack,
    double? lineHeight,
    double letterSpace = 0.2,
    TextDecoration decoration = TextDecoration.none,
  }) {
    return TextStyle(
        color: color,
        fontSize: size,
        decoration: decoration,
        fontFamily: 'Inter_Regular',
        fontWeight: fontWeight,
        height: lineHeight,
        letterSpacing: letterSpace,
        overflow: TextOverflow.ellipsis);
  }
//---------------heading text style---------------//

  static TextStyle heading({
    double size = 18,
    FontWeight? fontWeight,
    Color? color = kBlack,
    TextDecoration decoration = TextDecoration.none,
    double? lineHeight,
    double? letterSpace,
  }) {
    return TextStyle(
        color: color,
        fontSize: size,
        decoration: decoration,
        fontFamily: 'Inter_Regular',
        fontWeight: fontWeight,
        height: lineHeight,
        letterSpacing: letterSpace,
        overflow: TextOverflow.ellipsis);
  }
}
