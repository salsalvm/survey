import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colors.dart';
import '../styles.dart';

class KCustomPopupMenu extends StatelessWidget {
  const KCustomPopupMenu(
      {super.key,
      required this.content,
      required this.icon,
      this.iconBgColor = kTransparent,
      this.size = 20,
      this.bgColor = kPrimary});
  final String content;
  final String icon;
  final Color iconBgColor;
  final Color bgColor;
  final double size;
  @override
  Widget build(BuildContext context) {
    return CustomPopupMenu(
      verticalMargin: 0,
      arrowSize: 12,
      menuBuilder: () {
        return Container(
          padding: const EdgeInsets.all(6),
          height: 36,
          width: MediaQuery.of(context).size.width * .55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: bgColor,
          ),
          child: Center(
            child: Text(
              content,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: KStyle.content(
                lineHeight: 1,
                color: kWhite,
              ),
            ),
          ),
        );
      },
      position: PreferredPosition.bottom,
      barrierColor: kTransparent,
      pressType: PressType.singleClick,
      arrowColor: bgColor,
      child: CircleAvatar(
        radius: 10,
        backgroundColor: iconBgColor,
        child: SvgPicture.asset(
          icon,
          fit: BoxFit.fill,
          width: size,
          height: size,
        ),
      ),
    );
  }
}
