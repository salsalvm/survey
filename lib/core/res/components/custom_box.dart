import 'package:flutter/material.dart';

import '../colors.dart';

class CustomBox extends StatelessWidget {
  const CustomBox({super.key, this.onTap, this.child, this.bgColor = kWhite,this.borderColor=kInActive});

  final void Function()? onTap;
  final Widget? child;
  final Color? bgColor;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:const EdgeInsets.all(10),
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
