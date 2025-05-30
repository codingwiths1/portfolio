import 'package:flutter/material.dart';

import 'package:portfolio/front_end/responsive/mobile/screens/home/home.dart';
import 'package:portfolio/front_end/responsive/tablet/screens/home/home.dart';

import 'desktop/screens/home/home.dart';

class TResponsive extends StatelessWidget {
  const TResponsive(
      {super.key,
      required this.desktop,
      required this.tablet,
      required this.mobile});
  final Widget desktop;
  final Widget tablet;
  final Widget mobile;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1200) {
        return desktop;
      } else if (constraints.maxWidth > 700) {
        return tablet;
      } else if (constraints.maxWidth > 300) {
        return mobile;
      } else {
        return Scaffold(
          body: Center(
            child: TText(text: "SCREEN TOO SMALL FOR DISPLAY"),
          ),
        );
      }
    });
  }
}
