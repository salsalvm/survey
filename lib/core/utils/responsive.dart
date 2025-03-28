import 'package:flutter/cupertino.dart';

class ResponsiveRatio {
  static double height(BuildContext context, double height) {
    return MediaQuery.of(context).size.height * height;
  }

 static double width(BuildContext context, double width) {
    return MediaQuery.of(context).size.width * width;
  }
}