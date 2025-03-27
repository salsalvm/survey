// utils class like  recieving some strig. returning show error message or success messages help of snackbar or toast
//in this class example of code re-usability. any messages to reflect our ui to pass here  help of context.

//also these class hold about dialogue boxes we can use this static methods in these class referencess

import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';

import '../../presentation/widgets/function.dart';
import '../res/colors.dart';
import '../res/components/custom_asset_image.dart';
import '../res/components/custom_button.dart';
import '../res/gradient.dart';
import '../res/styles.dart';

class KUtils {
//---------------snack  message its depend on color---------------//

  static void snackMessage(BuildContext context,
      {required String message,
      required Color color,
      bool? image,
      String? imageName}) {
    showFlushbar(
      context: context,
      flushbar: Flushbar<dynamic>(
        messageColor: kWhite,
        forwardAnimationCurve: Curves.decelerate,
        padding: const EdgeInsets.all(15),
        message: message,
        duration: const Duration(seconds: 3),
        flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: color,
        reverseAnimationCurve: Curves.decelerate,
        icon: Visibility(
          visible: image ?? false,
          child: CustomAssetImage(
            name: imageName ?? '',
            height: 30,
            width: 30,
          ),
        ),
      )..show(context),
    );
  }

  //---------------custom dialogue---------------//
//with in a column contain
//tow simple button
//with out gradient style
  static Future<dynamic> customSimpleDialogue(
    BuildContext context, {
    String title = '',
    String content = '',
    void Function()? onTapSecond,
  }) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            padding: const EdgeInsets.all(25),
            width: double.infinity,
            child: Wrap(
              alignment: WrapAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        title,
                        style: KStyle.heading(size: 22),
                      ),
                    ),
                  ],
                ),
                Text(
                  content,
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: KStyle.title(),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    spacing: 10,
                    children: [
                      Expanded(
                        child: CustomButton(
                          widget: Text(
                            'No',
                            style: KStyle.heading(),
                          ),
                          buttonWidth: double.infinity,
                          color: kInActive.withOpacity(.5),
                          borderColor: kInActive.withOpacity(.5),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Expanded(
                        child: CustomButton(
                          widget: Text(
                            'Yes',
                            style: KStyle.heading(color: kWhite),
                          ),
                          onTap: 
                            onTapSecond,
                          buttonWidth: double.infinity,
                          color: kWarning,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  //---------------custom dialogue---------------//
//with in a row contain
//tow  button
//with gradient style
  static Future<dynamic> customGradientDialogue(
    BuildContext context, {
    required String icon,
    String? title,
    String? content,
    String? confirmButton,
    String? cancelButton,
    void Function()? onTapConfirm,
  }) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            padding: const EdgeInsets.all(15),
            width: double.infinity,
            child: Wrap(
              alignment: WrapAlignment.center,
              children: <Widget>[
                Container(
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: kLight,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: CustomAssetImage(
                      name: icon,
                      height: 65,
                      width: 65,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      title ?? '',
                      style: KStyle.heading(size: 24),
                    ),
                  ],
                ),
                Text(
                  content ?? '',
                  textAlign: TextAlign.center,
                  maxLines: 8,
                  style: KStyle.title(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CustomButton(
                        widget: Text(
                          cancelButton ?? 'No',
                          style: KStyle.title(
                              color: kPrimary, fontWeight: FontWeight.bold),
                        ),
                        buttonWidth: 130,
                        borderColor: kPrimary,
                        color: kPrimary.withOpacity(.05),
                        buttonHeight: 35,
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      CustomButton(
                        widget: Text(
                          confirmButton ?? 'Yes',
                          style: KStyle.title(
                              color: kWhite, fontWeight: FontWeight.bold),
                        ),
                        buttonHeight: 41,
                        buttonWidth: 130,
                        gradient: KGradient.kButton,
                        onTap: onTapConfirm ?? () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  //this bottom sheet hold an icon and colosing function
// and also call this bottom sheet will reflect on  same sheet
  static Future<void> customBottomSheet(BuildContext context,
      {required Widget widget,
      bool closeVisible = true,
      bool isDismisible = false}) {
    return showModalBottomSheet(
      isScrollControlled: true,
      isDismissible: isDismisible,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 20, right: 20, bottom: 20),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Column(
                      spacing: 15,
                      children: <Widget>[
                        Container(
                          color: divider,
                          height: 2,
                          width: 30,
                        ),
                        widget
                      ],
                    ),
                    Visibility(
                      visible: closeVisible,
                      child: KFunctions.clearButton(context),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  static Future<dynamic> simpleBottomSheet(BuildContext context,
      {required Widget child}) {
    return showModalBottomSheet(
      isDismissible: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (BuildContext context) => SizedBox(
        height: 230,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: child,
        ),
      ),
    );
  }
}
