import 'package:flutter/material.dart';
import '../asset/image_asset.dart';
import 'custom_asset_image.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    super.key,
    this.height = 60,
    this.width = 60,
    required this.img,
    this.placeHolder,
  });
  final double height;
  final double width;
  final String img;
  final String? placeHolder;
  @override
  Widget build(BuildContext context) {
    const String placeHoler = ImageAssets.splash;
    return FadeInImage.assetNetwork(
      placeholder: placeHolder ?? placeHoler,
      width: width,
      height: height,
      placeholderFit: BoxFit.fill,
      imageErrorBuilder: (_, __, ___) => CustomAssetImage(
        name: placeHolder ?? placeHoler,
        height: height,
        width: width,
      ),
      placeholderErrorBuilder: (_, __, ___) => CustomAssetImage(
        name: placeHolder ?? placeHoler,
        height: height,
        width: width,
      ),
      image: img,
      fit: BoxFit.fill,
    );
  }
}
