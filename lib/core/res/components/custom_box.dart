import 'package:flutter/material.dart';

import '../colors.dart';

class CustomBox extends StatelessWidget {
  const CustomBox({super.key, this.onTap, this.child, this.bgColor = kWhite,this.borderColor=kInActive,this.padding=20});

  final void Function()? onTap;
  final Widget? child;
  final Color? bgColor;
  final Color borderColor;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: borderColor,
            width: .2,
          ),
        ),
        child: child,
      ),
    );
  }
}
