import 'package:flutter/material.dart';
import 'package:functions/core/res/colors.dart';
import 'package:functions/core/res/styles.dart';

class AuthAppBar extends StatelessWidget {
  const AuthAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: KStyle.heading(color: kWarning, size: 24),
      ),
    );
  }
}
