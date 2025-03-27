


import 'dart:ui';

import 'package:flutter/material.dart';

import '../colors.dart';

class CustomGlassMorphismBg extends StatelessWidget {
  const CustomGlassMorphismBg(
      {super.key,
      required this.widget,
      this.height,
      this.width,
      this.radius = 50});

  final Widget widget;
  final double? width;
  final double? height;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: kWhite.withOpacity(0.2),
            borderRadius: BorderRadius.circular(radius),
          ),
          child: widget,
        ),
      ),
    );
  }
}
