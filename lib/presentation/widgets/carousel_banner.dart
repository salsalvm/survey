import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../core/res/components/custom_asset_image.dart';


class CarouselBanner extends StatelessWidget {
  const CarouselBanner(
      {super.key,
      this.bottom = 0,
      required this.height,
      this.top = 0,
      this.fraction = .84,
      this.left = 0,
      this.right = 0});
  final double bottom;
  final double top;
  final double left;
  final double right;
  final double height;
  final double fraction;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: bottom, top: top, left: left, right: right),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: CarouselSlider.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return CustomAssetImage(
              name: '',
              height: height - 1,
              width: double.infinity,
            );
          },
          options: CarouselOptions(
            autoPlay: true,
            height: height,
            enlargeCenterPage: true,
            viewportFraction: fraction,
          ),
        ),
      ),
    );
  }
}
