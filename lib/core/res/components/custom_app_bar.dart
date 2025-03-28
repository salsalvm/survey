import 'package:flutter/material.dart';

import '../colors.dart';
import '../styles.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, this.title, this.actions, this.titleText = '', this.onTap});

  final void Function()? onTap;
  final Widget? title;
  final String titleText;
  final Widget? actions;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum:const EdgeInsets.only(left: 20,right: 20),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            GestureDetector(
              onTap: onTap ?? () => Navigator.pop(context),
              child: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: kInActive,
                    width: .2,
                  ),
                ),
                child:const Padding(
                  padding:  EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: kPrimary,
                  ),
                ),
              ),
            ),
            Container(
              child: title ??
                  Text(
                    titleText,
                    style: KStyle.heading(
                        fontWeight: FontWeight.bold, letterSpace: .9),
                  ),
            ),
            const Spacer(),
            Container(
              child: actions,
            )
          ]),
    );
  }
}
