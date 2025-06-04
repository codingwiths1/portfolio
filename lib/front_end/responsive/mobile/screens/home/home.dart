import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/front_end/utils/helper/color.dart';

import '../../../../route/route.dart';
import '../../../../theme/theme.dart';
import '../../../desktop/screens/home/home.dart';

class TMobileHome extends StatelessWidget {
  const TMobileHome({super.key});

  // late List<AnimationController> controllers;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Image.network(
                    errorBuilder: (context, error, stackTrace) => Container(
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
                    'https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632507/ly3rftmxxalda51qmopg.jpg',
                    frameBuilder: (context, child, frame,_) {
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
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
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
                                  fontSize: 40,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                TMobileName(),
                              ],
                            ),
                            SizedBox(
                              height: 10,
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
                          ],
                        ),
                      ],
                    ),
                  ],
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
                  height: 5,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "We build handcrafted Mobile & Web experiences engineered for High-end Brands and bold visionaries.\nSoftwares that blend elegance, performance, and precision For visionaries who demand nothing but the best Because excellence isn’t optional,",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w100),
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
                SizedBox(height: 30,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TMobileName extends StatelessWidget {
  const TMobileName({
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
            fontSize: 40,
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
              fontSize: 40,
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
