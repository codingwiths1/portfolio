import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/front_end/utils/helper/color.dart';

import '../../../../../back_end/function/function.dart';
import '../../../../route/route.dart';
import '../../../../theme/theme.dart';
import '../../../../utils/widgets/constraints.dart';

class TDesktopHome extends StatelessWidget {
  const TDesktopHome({super.key});

  // late List<AnimationController> controllers;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TConstraints(
        child: Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 100,
                    right: 50,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TText(
                        text: 'HI THERE!',
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TText(
                            text: "I'M",
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          TDeskName(),
                        ],
                      ),
                      Container(
                        color: TColors.orange,
                        padding: EdgeInsets.all(
                          5,
                        ),
                        child: TText(
                          letterSpacing: 2,
                          text: "MOBILE / WEB DEVELOPER",
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TText(
                        text: "Crafting Digital Experiences for the Elite",
                        letterSpacing: 2,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Picasso",
                        fontSize: 18,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  "We build handcrafted Mobile & Web experiences engineered for High-end Brands and bold visionaries.\nSoftwares that blend elegance, performance, and precision For visionaries who demand nothing but the best Because excellence isn’t optional,",
                              style: TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w100),
                            ),
                            TextSpan(
                              text: " IT’S EXPECTED.",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          context.go(TRoutes.about);
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(
                            10,
                          ),
                          backgroundColor: TColors.orange,
                          foregroundColor: TColors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              100,
                            ),
                          ),
                        ),
                        child: TText(
                          fontSize: 14 * 0.7,
                          text: "MORE ABOUT ME",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Image.network(
                    errorBuilder: (context, error, stackTrace) => Center(
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0.3,
                              color: TColors.white,
                            ),
                          ),
                          child:  Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.error_outline_rounded,
                                  color: TColors.white,
                                ),
                                TText(
                                  text: "UNABLE TO LOAD IMAGE",
                                  fontSize: 6,
                                  color: TColors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    'https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632507/ly3rftmxxalda51qmopg.jpg',
                    height: double.maxFinite,
                    width: double.maxFinite,
                    frameBuilder: (context, child, frame, _) {
                      if (frame != null) {
                        return child;
                      } else {
                        return Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0.3,
                              color: TColors.white,
                            ),
                          ),
                          child: Center(
                            child: SpinKitChasingDots(
                              color: TColors.white,
                            ),
                          ),
                        );
                      }
                    },
                    fit: BoxFit.cover,
                  ),
                  TNav()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TNav extends StatelessWidget {
  const TNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
      ),
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: TFunction.isTablet(context) ? 5 : 10, vertical: 30),
          decoration: BoxDecoration(
            color: TColors.orange,
            borderRadius: BorderRadius.circular(
              300,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TIcon(
                  url:
                      "https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632802/wrpmshw11tjyac5zew7a.png",
                  route: TRoutes.home,
                ),
                SizedBox(
                  height: 20,
                ),
                TIcon(
                  url:
                      "https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632809/dokamwuzampi3inkvnwg.png",
                  route: TRoutes.about,
                ),
                SizedBox(
                  height: 20,
                ),
                TIcon(
                  url:
                      "https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632808/leb5fgagwhwg93eeq602.png",
                  route: TRoutes.portfolio,
                ),
                SizedBox(
                  height: 20,
                ),
                TIcon(
                  url:
                      "https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632805/ucie71qy4t0gq6ubjfxu.png",
                  route: TRoutes.testimonials,
                ),
                SizedBox(
                  height: 20,
                ),
                TIcon(
                  url:
                      "https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632811/casbraeh2aqrpcpg82po.png",
                  route: TRoutes.packages,
                ),
                SizedBox(
                  height: 20,
                ),
                TIcon(
                  url:
                      "https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632803/so06xkmo3xvdekqpohkk.png",
                  route: TRoutes.contact,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TIcon extends StatelessWidget {
  const TIcon({
    super.key,
    required this.url,
    required this.route,
  });
  final String url;
  final String route;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: InkWell(
        onTap: () {
          context.go(route);
        },
        child: Image.network(
          errorBuilder: (context, error, stackTrace) => Icon(
            Icons.error_outline_rounded,
            color: Colors.white,
            size: 20,
          ),
          url,
          frameBuilder: (context, child, frame, _) {
            if (frame != null) {
              return child;
            } else {
              return SpinKitChasingDots(
                size: 20,
                color: TColors.white,
              );
            }
          },
          color: GoRouterState.of(context).uri.toString() == route
              ? TColors.white
              : TColors.black,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}

class TDeskName extends StatelessWidget {
  const TDeskName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Outline
        Text(
          'SHALOM',
          style: TextStyle(
            letterSpacing: 3,
            fontSize: 50,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 3
              ..color = TColors.orange,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Fill
        Obx(
          () => Text(
            'SHALOM',
            style: TextStyle(
              letterSpacing: 3,
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: TTheme.isDark.value
                  ? TColors.black87
                  : TColors.white, // or Colors.transparent
            ),
          ),
        ),
      ],
    );
  }
}

class TText extends StatelessWidget {
  const TText({
    super.key,
    this.fontSize = 14,
    this.letterSpacing = 1,
    this.color,
    required this.text,
    this.fontWeight = FontWeight.w400,
    this.fontFamily = "Inter",
    this.fontStyle = FontStyle.normal,
  });
  final double fontSize;
  final double letterSpacing;
  final Color? color;
  final String text;
  final FontWeight fontWeight;
  final String fontFamily;
  final FontStyle fontStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.clip,
      text,
      style: TextStyle(
        fontStyle: fontStyle,
        fontFamilyFallback: ["Picasso"],
        fontFamily: fontFamily,
        color: color,
        fontSize: TFunction.isTablet(context) ? fontSize * 0.9 : fontSize,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
