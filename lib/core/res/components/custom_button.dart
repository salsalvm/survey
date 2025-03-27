import 'package:flutter/material.dart';

import '../colors.dart';

//this class contain a button. it is an each action button in this project.
//this button also added gradient and its a optional parameter we can use our usecases
//used with instance of a class
//form with help of constructor
class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.widget,
    required this.onTap,
    this.buttonWidth,
    this.buttonHeight = 50,
    this.color = kTransparent,
    this.fontSize = 24,
    this.radius = 15,
    this.gradient,
    this.borderColor = kTransparent,
    this.gradientBorder = kTransparent,
  });
  final VoidCallback? onTap;
  final Widget widget;
  final double radius;
  final Color color;
  final Color borderColor;
  final Color gradientBorder;
  final double buttonHeight;
  final double? buttonWidth;
  final double fontSize;
  final Gradient? gradient;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ButtonTheme(
        // padding: EdgeInsets.zero,
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: borderColor, width: .4),
              borderRadius: BorderRadius.circular(radius),
            ),
            shadowColor: kTransparent,
            elevation: 0,
            padding:const EdgeInsetsDirectional.only(start: 0, top: 2, bottom: 2),
          ),
          child: Container(
            padding:const EdgeInsets.symmetric(horizontal: 10),
            height: buttonHeight,
            width: buttonWidth,
            decoration: BoxDecoration(
              gradient: gradient,
              border: Border.all(
                color: gradientBorder,
                width: .4,
                strokeAlign: BorderSide.strokeAlignCenter,
              ),
              borderRadius: BorderRadius.circular(radius),
            ),
            child: Center(child: widget),
          ),
        ),
      ),
    );
  }
}
