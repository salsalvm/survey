import 'package:flutter/material.dart';

import '../colors.dart';

class CustomAssetImage extends StatelessWidget {
  const CustomAssetImage({
    super.key,
    required this.name,
    this.height,
    this.width,
    this.filteQuality = FilterQuality.high,
    this.fit = BoxFit.cover,
    this.shape = BoxShape.rectangle,
    this.borderColor = kTransparent,
    this.child,
    this.padding,
  });

  final String name;
  final double? height;
  final double? width;
  final FilterQuality filteQuality;
  final BoxFit fit;
  final Color borderColor;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final BoxShape shape;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: CircleAvatar(
        child: Container(
          height: height,
          width: width,
          padding: padding,
          decoration: BoxDecoration(
            shape: shape,
            border: Border.all(
              color: borderColor,
              width: 2,
            ),
            image: DecorationImage(
              fit: BoxFit.fill,
              filterQuality: FilterQuality.high,
              image: AssetImage(name),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
