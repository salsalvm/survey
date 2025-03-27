import 'package:flutter/material.dart';

import '../../core/res/colors.dart';
import '../../core/res/styles.dart';


class DotAnimationText extends StatelessWidget {
  const DotAnimationText(
      {super.key,
      required AnimationController controller,
      required Animation<double> opacityAnimation,
      this.txt = '',
      this.color = kWhite,
      this.dotTrue = true})
      : _controller = controller,
        _opacityAnimation = opacityAnimation;

  final AnimationController _controller;
  final Animation<double> _opacityAnimation;
  final String txt;
  final Color color;
  final bool dotTrue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List<Widget>.generate(dotTrue ? 4 : 1, (int index) {
        return AnimatedBuilder(
          animation: _controller,
          builder: (BuildContext context, Widget? child) {
            return index == 0
                ? FadeTransition(
                    opacity: _opacityAnimation,
                    child: Text(
                      txt,
                      style: KStyle.title(
                        lineHeight: 1,
                        color: color,
                      ),
                    ),
                  )
                : Opacity(
                    opacity: (1 - ((_controller.value + (index * 0.2)) % 1))
                        .clamp(0.3, 1.0),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 1, top: 5),
                      child: Text(
                        '●',
                        style: KStyle.content(size: 7, color: color),
                      ),
                    ),
                  );
          },
        );
      }),
    );
  }
}
