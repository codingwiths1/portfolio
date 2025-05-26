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
        );
  }
}

class ScaleAnimation extends StatelessWidget {
  const ScaleAnimation(
      {super.key, required this.widget, required this.animationController});
  final Widget widget;
  final AnimationController animationController;
  @override
  Widget build(BuildContext context) {
    return widget
        .animate(controller: animationController)
        .scale(duration: 200.milliseconds);
  }
}
