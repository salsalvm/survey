import 'package:flutter/material.dart';

import '../../core/res/colors.dart';
import '../../core/res/styles.dart';


class NoDataFound extends StatelessWidget {
  const NoDataFound({
    super.key,
    required this.string,
  });

  final String string;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        string,
        style: KStyle.content(color: kInActive),
      ),
    );
  }
}
