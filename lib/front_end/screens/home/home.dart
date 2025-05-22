import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:portfolio/front_end/utils/helper/color.dart';
import 'package:portfolio/front_end/utils/widgets/animation.dart';
import 'package:portfolio/front_end/utils/widgets/transition.dart';

import '../../theme/theme.dart';
import '../../utils/widgets/constraints.dart';

class THome extends StatefulWidget {
  const THome({super.key});

  @override
  State<THome> createState() => _THomeState();
}

class _THomeState extends State<THome> with TickerProviderStateMixin {
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
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.purple,
                Colors.black12,
                Colors.black26,
                Colors.black87,
              ],
            ),
          ),
          child: TConstraints(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Custom Appbar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TText(
                        text: "Shalom Ubi",
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                      Row(
                        children: [
                          TText(
                            text: "Home",
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                          SizedBox(
                            width: 13,
                          ),
                          TText(
                            text: "Course",
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                          SizedBox(
                            width: 13,
                          ),
                          TText(
                            text: "Blog",
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                          SizedBox(
                            width: 13,
                          ),
                          TText(
                            text: "About Me",
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ],
                      ),
                      Transform.scale(
                        scale: 0.7,
                        child: Obx(
                          () => Switch(
                            thumbColor: WidgetStateColor.resolveWith(
                              (_) => Colors.black87,
                            ),
                            thumbIcon: WidgetStateProperty.resolveWith(
                              (_) {
                                if (TTheme.isDark.value) {
                                  return Icon(Icons.dark_mode);
                                } else {
                                  return Icon(Icons.light_mode);
                                }
                              },
                            ),
                            value: TTheme.isDark.value,
                            onChanged: (_) =>
                                TTheme.isDark.value = !TTheme.isDark.value,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TVisibility(
                    uniqueKey: Key("0"),
                    function: () {
                      controllers[0].forward();
                    },
                    child: YAnimation(
                      controller: controllers[0],
                      offset: -1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Obx(
                            () => Image.asset(
                              "assets/images/png-transparent-flutter-logos-brands-icon-thumbnail.png",
                              color: TTheme.isDark.value
                                  ? TColors.white
                                  : TColors.black87,
                              height: 20,
                              width: 20,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          TText(
                            text: "Powered by Flutter",
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),

                  /// Body
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50.0,
                    ),
                    child: Row(
                      children: [
                        /// Image Row
                        TVisibility(
                          uniqueKey: Key("1"),
                          function: () => controllers[1].forward(),
                          child: XAnimation(
                            controller: controllers[1],
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                500,
                              ),
                              child: Image.asset(
                                "assets/images/profile_image.jpeg",
                                height: 500,
                                width: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),

                        Expanded(
                          child: TVisibility(
                            uniqueKey: Key("2"),
                            function: () => controllers[2].forward(),
                            child: XAnimation(
                              controller: controllers[2],
                              offset: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TText(
                                    text: "Shalom Ubi",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  TText(
                                    letterSpacing: 0,
                                    text:
                                        "Expert In Mobile & Web Development, Firebase, GetX & Payment Gateways",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 25,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TText(
                                    letterSpacing: 0,
                                    text:
                                        "Flutter Developer with a background in Computer Science and a track record of building clean, responsive, and scalable mobile apps for both Android and iOS and a solid foundation in web development.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Row(
                                    children: [
                                      TElevatedButton(
                                        text: "Courses",
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      TElevatedButton(
                                        color: TColors.transparent,
                                        text: "Corporation",
                                        width: 150,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TVisibility(
                    uniqueKey: Key("3"),
                    function: () {
                      controllers[3].forward();
                    },
                    child: YAnimation(
                      controller: controllers[3],
                      offset: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TText(
                            text: "Courses",
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          TText(
                            letterSpacing: 0,
                            text:
                                "Learn Flutter and Mobile App Development with me",
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TElevatedButton extends StatelessWidget {
  const TElevatedButton({
    super.key,
    required this.text,
    this.width = 120,
    this.height = 40,
    this.color = const Color(0xff7B1FA2),
  });
  final String text;
  final double width;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width, height),
        minimumSize: Size(0, 0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        foregroundColor: Colors.white,
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.2, color: TColors.purple),
          borderRadius: BorderRadius.circular(
            300,
          ),
        ),
      ),
      onPressed: () {},
      child: TText(
        text: text,
        letterSpacing: 0,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }
}

class TText extends StatelessWidget {
  const TText({
    super.key,
    required this.text,
    required this.fontWeight,
    required this.fontSize,
    this.letterSpacing = 2,
    // required this.color,
  });
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final double letterSpacing;

  // final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.clip,
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        letterSpacing: letterSpacing,
        // color: color,
      ),
    );
  }
}
