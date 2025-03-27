import 'package:flutter/cupertino.dart';

class ResponsiveRatio {
  double height(BuildContext context, double height) {
    return MediaQuery.of(context).size.height * height;
  }

  double width(BuildContext context, double width) {
    return MediaQuery.of(context).size.width * width;
  }
}