import 'package:flutter/material.dart';
import 'package:portfolio/front_end/responsive/desktop/screens/contact/contact.dart';
import 'package:portfolio/front_end/responsive/desktop/screens/packages/packages.dart';
import 'package:portfolio/front_end/responsive/desktop/screens/portfolio/portfolio.dart';
import 'package:portfolio/front_end/responsive/desktop/screens/testimonial/testimonial.dart';
import 'package:portfolio/front_end/responsive/mobile/screens/home/home.dart';
import 'package:portfolio/front_end/responsive/tablet/screens/home/home.dart';

import 'desktop/screens/about/about.dart';
import 'desktop/screens/home/home.dart';

class TResponsive extends StatelessWidget {
  const TResponsive({super.key, required this.desktop});
  final Widget desktop;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1200) {
        return desktop;
      } else if (constraints.maxWidth > 700) {
        return TTabletHome();
      } else if (constraints.maxWidth > 300) {
        return TMobileHome();
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
