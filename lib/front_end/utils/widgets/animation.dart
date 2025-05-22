import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';

class XAnimation extends StatelessWidget {
  const XAnimation(
      {super.key,
      required this.child,
      required this.controller,
      this.offset = -1});
  final Widget child;
  final AnimationController controller;
  final double offset;

  @override
  Widget build(BuildContext context) {
    return child
        .animate(
          autoPlay: false,
          controller: controller,
        )
        .fadeIn(
          duration: Duration(seconds: 1),
          curve: Curves.easeIn,
        )
        .slideX(
          begin: offset,
          duration: Duration(seconds: 1),
          curve: Curves.easeIn,
        );
  }
}

class YAnimation extends StatelessWidget {
  const YAnimation(
      {super.key,
      required this.child,
      required this.controller,
      this.offset = -1});
  final Widget child;
  final AnimationController controller;
  final double offset;

  @override
  Widget build(BuildContext context) {
    return child
        .animate(
          autoPlay: false,
          controller: controller,
        )
        .fadeIn(
          duration: Duration(seconds: 1),
          curve: Curves.easeIn,
        )
        .slideY(
          begin: offset,
          duration: Duration(seconds: 1),
          curve: Curves.easeIn,
        );
  }
}
