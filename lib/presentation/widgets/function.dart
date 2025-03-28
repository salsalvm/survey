// ignore_for_file: avoid_bool_literals_in_conditional_expressions

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../core/res/asset/image_asset.dart';
import '../../core/res/colors.dart';
import '../../core/res/components/custom_asset_image.dart';


class KFunctions {
  //open dial pad using this function
  //its reflected on every helpline button

  static Future<void> openDialPad() async {
    // final Uri url = Uri(scheme: 'tel', path: 'contact');

    // if (await canLaunchUrl(url)) {
    //   await launchUrl(url);
    // } else {
    //   log("Can't open dial pad.");
    // }
  }



//rounded checkbox style
//it is a type of check box
//
  static Container roundedCheckBox(Color selectColor,
      {required double width, double? iconSize, Color? borderColor}) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        border: Border.all(
            color: borderColor ?? kBlack.withOpacity(.3), width: 1.5),
        color: selectColor,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.done,
        weight: 21,
        color: kWhite,
        size: iconSize ?? 16,
      ),
    );
  }

//connect with us function
// its hold ontap function also
  static GestureDetector connectIcons(
      {required String icon, void Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: CustomAssetImage(
        name: icon,
        height: 36,
        width: 36,
      ),
    );
  }

  static Align clearButton(BuildContext context,
      {Color? bgColor, Color? iconColor}) {
    return Align(
      alignment: Alignment.topRight,
      child: CircleAvatar(
        radius: 20,
        backgroundColor: bgColor ?? kInActive,
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,
            size: 24,
            color: iconColor ?? kBlack,
          ),
        ),
      ),
    );
  }

//----------split player name--------//
  static String splitSuffixName(List<String> splitName) {
    final List<String> splitPrefix = <String>[];

    for (final String element in splitName) {
      if (element != splitName.last) {
        splitPrefix.add(element.split('').first);
      }
    }
    return '${splitPrefix.join(' ')} ${splitName.last}';
  }

  static String getDateFormate(
      {DateTime? pickedDate, String? formate = 'MMM dd, yyyy'}) {
    return pickedDate != null ? DateFormat('$formate').format(pickedDate) : '';
  }
}
