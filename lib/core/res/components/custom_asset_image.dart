import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colors.dart';

class CustomAssetImage extends StatelessWidget {
  const CustomAssetImage({
    super.key,
    required this.name,
    this.height,
    this.width,
    this.filteQuality = FilterQuality.high,
    this.fit = BoxFit.fill,
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
    return Container(
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
    );
  }
}

class CustomSvgImage extends StatelessWidget {
  const CustomSvgImage({
    required this.icon,
    this.width = 24,
    this.height = 24,
    super.key,
  });
  final String icon;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      fit: BoxFit.fill,
    );
  }
}
