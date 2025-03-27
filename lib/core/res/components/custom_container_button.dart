import 'package:flutter/material.dart';

import '../../../presentation/widgets/function.dart';
import '../colors.dart';
import '../styles.dart';

class CustomContainerButton extends StatelessWidget {
  const CustomContainerButton({
    super.key,
    this.visibleIcon = false,
    this.color = kPrimary,
    required this.name,
    this.onTap,
    this.padLeft = 5,
    this.radius = 30,
    this.padRight = 0,
    this.textSize = 11,
  });
  final bool visibleIcon;
  final Color color;
  final String name;
  final double padLeft;
  final double padRight;
  final double radius;
  final double textSize;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: padLeft, right: padRight),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            padding:const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            decoration: BoxDecoration(
              border: Border.all(color: color.withOpacity(.4)),
              borderRadius: BorderRadiusDirectional.circular(radius),
              color: color.withOpacity(0.1),
            ),
            child: Center(
              child: Row(
                children: <Widget>[
                  Visibility(
                      visible: visibleIcon,
                      child: KFunctions.roundedCheckBox(color.withOpacity(.4),
                          borderColor: kTransparent,
                          width: 14,
                          iconSize: 10)),
                  Text(
                    ' $name',
                    style: KStyle.content(
                        size: textSize,
                        color: color,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
