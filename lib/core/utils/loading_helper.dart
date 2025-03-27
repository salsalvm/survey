import 'package:flutter/material.dart';
import 'package:functions/core/utils/enum/enum.dart';
import '../res/colors.dart';

class LoadingHelper {
  LoadingHelper._();

  static void call(LoadingState state, BuildContext context) {
    if (state == LoadingState.LOADING) {
      showLoading(context);
    } else if (state == LoadingState.SUCCESS) {
      hideLoading(context);
    }
  }

  static Future<void> showLoading(BuildContext context) async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: kBlack.withOpacity(0.3),
      builder: (BuildContext context) {
        return PopScope(
          canPop: false,
          child: Dialog(
            backgroundColor: kTransparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(child: CircularProgressIndicator()),
          ),
        );
      },
    );
  }

  static void hideLoading(BuildContext ctx) {
    if (Navigator.canPop(ctx)) {
      Navigator.pop(ctx);
    }
  }
}
