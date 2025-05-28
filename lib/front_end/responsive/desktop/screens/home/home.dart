import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/front_end/utils/helper/color.dart';

import '../../../../theme/theme.dart';
import '../../../../utils/widgets/constraints.dart';

class TDesktopHome extends StatefulWidget {
  const TDesktopHome({super.key});

  @override
  State<TDesktopHome> createState() => _TDesktopHomeState();
}

class _TDesktopHomeState extends State<TDesktopHome>
    with TickerProviderStateMixin {
  late List<AnimationController> controllers;
  @override
  void initState() {
    controllers = List.generate(
        4,
        (_) => AnimationController(
              vsync: this,
            ));
    super.initState();
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

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
                          TName(),
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
                        onPressed: () {},
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
                  Image.asset(
                    height: double.maxFinite,
                    width: double.maxFinite,
                    'assets/images/WhatsApp Image 2025-05-24 at 11.23.53 AM.jpeg',
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
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
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
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "assets/icons/home.png",
                    color: TColors.white,
                    height: 20,
                    width: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "assets/icons/user.png",
                    height: 20,
                    width: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "assets/icons/suitcase.png",
                    height: 20,
                    width: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "assets/icons/pie-chart.png",
                    height: 20,
                    width: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "assets/icons/rating.png",
                    height: 20,
                    width: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "assets/icons/vip.png",
                    height: 20,
                    width: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "assets/icons/paper-plane.png",
                    height: 20,
                    width: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TName extends StatelessWidget {
  const TName({
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
        fontSize: fontSize,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
