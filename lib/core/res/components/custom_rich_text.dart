import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../colors.dart';
import '../styles.dart';

// this class contain two text widget in a single widget name richtext
//we can easily to change unique colores and action tap function in each text
//inside we can create morethan text widget because its a span type (inline elements)

// this class contain two text widget in a single widget name richtext
//we can easily to change unique colores and action tap function in each text
//inside we can create morethan text widget because its a span type (inline elements)

class KRichText extends StatelessWidget {
  const KRichText(
      {super.key,
      required this.firstText,
      required this.secondText,
      this.onTap,
      this.size = 12,
      this.secondColor = kGrey,
      this.firstWeight = FontWeight.normal,
      this.secondWeight = FontWeight.normal,
      this.firstTextColor = kBlack,
      this.lineHeight,
      this.padBottom = 0,
      this.padLeft = 0,
        this.textAlign=TextAlign.center,
      this.secondDecoration = TextDecoration.none,
      this.decoration = TextDecoration.none});
  final String firstText;
  final String secondText;
  final Color secondColor;
  final Color firstTextColor;
  final double size;
  final double? lineHeight;
  final FontWeight firstWeight;
  final FontWeight secondWeight;
  final double padBottom;
  final double padLeft;
  final TextAlign textAlign;
  final TextDecoration decoration;
  final TextDecoration secondDecoration;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: padBottom, left: padLeft),
      child: RichText(
        textAlign:textAlign,
        text: TextSpan(
          text: firstText,
          style: KStyle.content(
              lineHeight: lineHeight,
              size: size,
              decoration: decoration,
              fontWeight: firstWeight,
              color: firstTextColor),
          children: <InlineSpan>[
            TextSpan(
              text: secondText,

              style: KStyle.content(
                  lineHeight: lineHeight,
                  color: secondColor,
                  decoration: secondDecoration,
                  fontWeight: secondWeight,
                  size: size),
              recognizer: TapGestureRecognizer()..onTap = onTap,
            ),
          ],
        ),
      ),
    );
  }
}
