import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/front_end/responsive/desktop/screens/about/t_about.dart';
import 'package:portfolio/front_end/responsive/desktop/screens/home/home.dart';
import 'package:portfolio/front_end/utils/helper/color.dart';
import 'package:portfolio/front_end/utils/widgets/constraints.dart';

import '../../../../route/route.dart';

class TDesktopAbout extends StatelessWidget {
  const TDesktopAbout({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TConstraints(
        child: Row(
          children: [
            Expanded(
              child: TLeftNavText(),
            ),
            Expanded(
              flex: 3,
              child: Stack(
                children: [
                  Drawer(
                    width: double.maxFinite,
                    shape:
                        RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 40,
                          horizontal: 80,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 120,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: TColors.white,
                                ),
                              ),
                              child: Center(
                                child: TText(
                                  text: "MEET THE CREATOR",
                                  fontFamily: "Picasso",
                                  letterSpacing: 4,
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold,
                                  color: TColors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "I",
                                    style: TextStyle(
                                      fontFamily: "AscendantSerif",
                                      fontSize: 25,
                                      fontWeight: FontWeight.w100,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "'",
                                    style: TextStyle(
                                      fontFamily: "Inter",
                                      fontSize: 25,
                                      fontWeight: FontWeight.w100,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "m",
                                    style: TextStyle(
                                      fontFamily: "AscendantSerif",
                                      fontSize: 25,
                                      fontWeight: FontWeight.w100,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "  Shalom Ubi",
                                    style: TextStyle(
                                      fontFamily: "AscendantSerif",
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "  Mobile",
                                    style: TextStyle(
                                      fontFamily: "AscendantSerif",
                                      fontSize: 25,
                                      fontWeight: FontWeight.w100,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " / ",
                                    style: TextStyle(
                                      fontFamily: "Inter",
                                      fontSize: 25,
                                      fontWeight: FontWeight.w100,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Web Developer",
                                    style: TextStyle(
                                      fontFamily: "AscendantSerif",
                                      fontSize: 25,
                                      fontWeight: FontWeight.w100,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TText(
                              text:
                                  "With a keen eye for detail and a passion for precision, I craft mobile and web experiences that exude sophistication and performance. As a seasoned developer, I partner with discerning clients to bring their boldest digital visions to life—flawlessly engineered, elegantly designed. Each project I touch reflects a commitment to excellence, because I don’t just build websites and apps—I create digital statements.",
                              fontWeight: FontWeight.w100,
                              fontSize: 14,
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Image.network(
                                    errorBuilder:
                                        (context, error, stackTrace) =>
                                            Container(
                                      padding: EdgeInsets.all(
                                        50,
                                      ),
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
                                    'https://res.cloudinary.com/dsqc1pitc/image/upload/v1748638671/siyu7indd0smpd6uprik.png',
                                    frameBuilder: (context, child, frame, _) {
                                      if (frame != null) {
                                        return child;
                                      } else {
                                        return Container(
                                          padding: EdgeInsets.all(
                                            50,
                                          ),
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
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 20,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TText(
                                          text: 'WHAT I DO',
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Obx(
                                          () => Column(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  TAbout.expand[0] =
                                                      !TAbout.expand[0];
                                                  if (TAbout.expand[0]) {
                                                    TAbout.expand[1] = false;
                                                    TAbout.expand[2] = false;
                                                    TAbout.expand[3] = false;
                                                  }
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Image.network(
                                                      errorBuilder: (context,
                                                              error,
                                                              stackTrace) =>
                                                          SizedBox(
                                                        height: 50,
                                                        width: 50,
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
                                                      'https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632798/og0gvfilqdxbeg2nvvzh.png',
                                                      height: 50,
                                                      width: 50,
                                                      color: Colors.white,
                                                      frameBuilder: (context,
                                                          child, frame, _) {
                                                        if (frame != null) {
                                                          return child;
                                                        } else {
                                                          return SizedBox(
                                                            height: 50,
                                                            width: 50,
                                                            child: Center(
                                                              child:
                                                                  SpinKitChasingDots(
                                                                size: 30,
                                                                color: TColors
                                                                    .white,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                      },
                                                      fit: BoxFit.cover,
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Expanded(
                                                      child: TText(
                                                        text:
                                                            "Bespoke Mobile Development",
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Icon(
                                                      TAbout.expand[0]
                                                          ? Icons.arrow_drop_up
                                                          : Icons
                                                              .arrow_drop_down,
                                                      color: TColors.white,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              if (TAbout.expand[0])
                                                TText(
                                                  text:
                                                      "I craft high-performance mobile apps tailored to reflect the unique identity and aspirations of your brand. Seamless functionality meets sophisticated design—built exclusively for those who value quality without compromise.",
                                                  fontSize: 14,
                                                ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Obx(
                                          () => Column(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  TAbout.expand[1] =
                                                      !TAbout.expand[1];
                                                  if (TAbout.expand[1]) {
                                                    TAbout.expand[0] = false;
                                                    TAbout.expand[2] = false;
                                                    TAbout.expand[3] = false;
                                                  }
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Image.network(
                                                      errorBuilder: (context,
                                                              error,
                                                              stackTrace) =>
                                                          SizedBox(
                                                        height: 50,
                                                        width: 50,
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
                                                      'https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632803/yvcwt3yxbt4aeli2lrs5.png',
                                                      height: 50,
                                                      width: 50,
                                                      color: Colors.white,
                                                      frameBuilder: (context,
                                                          child, frame, _) {
                                                        if (frame != null) {
                                                          return child;
                                                        } else {
                                                          return SizedBox(
                                                            height: 50,
                                                            width: 50,
                                                            child: Center(
                                                              child:
                                                                  SpinKitChasingDots(
                                                                size: 30,
                                                                color: TColors
                                                                    .white,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                      },
                                                      fit: BoxFit.cover,
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Expanded(
                                                      child: TText(
                                                        text:
                                                            "Elegant Web Experiences",
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Icon(
                                                      TAbout.expand[1]
                                                          ? Icons.arrow_drop_up
                                                          : Icons
                                                              .arrow_drop_down,
                                                      color: TColors.white,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              if (TAbout.expand[1])
                                                TText(
                                                  text:
                                                      "From minimalist landing pages to immersive digital platforms, I design and develop websites that not only look exceptional but perform flawlessly. Each line of code is precision-engineered to captivate and convert.",
                                                  fontSize: 14,
                                                ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Obx(
                                          () => Column(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  TAbout.expand[2] =
                                                      !TAbout.expand[2];
                                                  if (TAbout.expand[2]) {
                                                    TAbout.expand[0] = false;
                                                    TAbout.expand[1] = false;
                                                    TAbout.expand[3] = false;
                                                  }
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Image.network(
                                                      errorBuilder: (context,
                                                              error,
                                                              stackTrace) =>
                                                          SizedBox(
                                                        height: 50,
                                                        width: 50,
                                                        child: Center(
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
                                                      'https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632812/wwm259ktee7g3kxvm1td.png',
                                                      height: 50,
                                                      width: 50,
                                                      color: Colors.white,
                                                      frameBuilder: (context,
                                                          child, frame, _) {
                                                        if (frame != null) {
                                                          return child;
                                                        } else {
                                                          return SizedBox(
                                                            height: 50,
                                                            width: 50,
                                                            child: Center(
                                                              child:
                                                                  SpinKitChasingDots(
                                                                size: 30,
                                                                color: TColors
                                                                    .white,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                      },
                                                      fit: BoxFit.cover,
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Expanded(
                                                      child: TText(
                                                        text:
                                                            "End-to-End Digital Craftsmanship",
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Icon(
                                                      TAbout.expand[2]
                                                          ? Icons.arrow_drop_up
                                                          : Icons
                                                              .arrow_drop_down,
                                                      color: TColors.white,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              if (TAbout.expand[2])
                                                TText(
                                                  text:
                                                      "From strategy to launch, I offer a seamless journey—blending design, development, and innovation into one cohesive experience. My work is never templated, always tailored, and designed to stand the test of time.",
                                                  fontSize: 14,
                                                ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Obx(
                                          () => Column(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  TAbout.expand[3] =
                                                      !TAbout.expand[3];
                                                  if (TAbout.expand[3]) {
                                                    TAbout.expand[0] = false;
                                                    TAbout.expand[1] = false;
                                                    TAbout.expand[2] = false;
                                                  }
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Image.network(
                                                      errorBuilder: (context,
                                                              error,
                                                              stackTrace) =>
                                                          SizedBox(
                                                        height: 50,
                                                        width: 50,
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
                                                      'https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632807/kecaudethuhddbklhigo.png',
                                                      height: 50,
                                                      width: 50,
                                                      color: Colors.white,
                                                      frameBuilder: (context,
                                                          child, frame, _) {
                                                        if (frame != null) {
                                                          return child;
                                                        } else {
                                                          return SizedBox(
                                                            height: 50,
                                                            width: 50,
                                                            child: Center(
                                                              child:
                                                                  SpinKitChasingDots(
                                                                size: 30,
                                                                color: TColors
                                                                    .white,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                      },
                                                      fit: BoxFit.cover,
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Expanded(
                                                      child: TText(
                                                        text:
                                                            "White-Glove Support & Collaboration",
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Icon(
                                                      TAbout.expand[3]
                                                          ? Icons.arrow_drop_up
                                                          : Icons
                                                              .arrow_drop_down,
                                                      color: TColors.white,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              if (TAbout.expand[3])
                                                TText(
                                                  text:
                                                      "Every project includes a level of personal attention reserved for luxury service. From the first consultation to post-launch refinement, I work closely with you—ensuring your vision is realized with clarity, confidence, and class.",
                                                  fontSize: 14,
                                                ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
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

class TLeftNavText extends StatefulWidget {
  const TLeftNavText({
    super.key,
  });

  @override
  State<TLeftNavText> createState() => _TLeftNavTextState();
}

class _TLeftNavTextState extends State<TLeftNavText>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Drawer(
      backgroundColor: TColors.orange,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              errorBuilder: (context, error, stackTrace) => Container(
                height: 370,
                color: TColors.black,
                padding: EdgeInsets.all(
                  50,
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
              frameBuilder: (context, child, frame, _) {
                if (frame != null) {
                  return child;
                } else {
                  return Container(
                    height: 370,
                    color: TColors.black,
                    padding: EdgeInsets.all(
                      50,
                    ),
                    child: Center(
                      child: SpinKitChasingDots(
                        color: TColors.white,
                      ),
                    ),
                  );
                }
              },
              "https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632507/ly3rftmxxalda51qmopg.jpg",
              fit: BoxFit.cover,
              width: double.maxFinite,
              height: 370,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 60,
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.circle,
                    color: TColors.black,
                    size: 8,
                  ),
                  TLittleDots(),
                  TNavText(
                    text: 'HOME',
                    route: TRoutes.home,
                  ),
                  TLittleDots(),
                  TNavText(
                    text: 'ABOUT ME',
                    route: TRoutes.about,
                  ),
                  TLittleDots(),
                  TNavText(
                    text: 'PORTFOLIO',
                    route: TRoutes.portfolio,
                  ),
                  TLittleDots(),
                  TNavText(
                    text: 'TESTIMONIALS',
                    route: TRoutes.testimonials,
                  ),
                  TLittleDots(),
                  TNavText(
                    text: 'OFFERS',
                    route: TRoutes.packages,
                  ),
                  TLittleDots(),
                  TNavText(
                    text: 'CONTACT',
                    route: TRoutes.contact,
                  ),
                  TLittleDots(),
                  Icon(
                    Icons.circle,
                    color: TColors.black,
                    size: 8,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class TNavText extends StatefulWidget {
  const TNavText({
    super.key,
    required this.text,
    required this.route,
  });
  final String text;
  final String route;

  @override
  State<TNavText> createState() => _TNavTextState();
}

class _TNavTextState extends State<TNavText>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return InkWell(
      onTap: () {
        context.go(widget.route);
      },
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
        ),
        child: TText(
          fontSize: 14,
          text: widget.text,
          letterSpacing: 4,
          fontFamily: "Picasso",
          color: GoRouterState.of(context).uri.toString() == widget.route
              ? TColors.white
              : TColors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class TLittleDots extends StatelessWidget {
  const TLittleDots({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            5,
            (_) => Container(
                  width: 2,
                  height: 2,
                  color: TColors.black,
                )),
      ),
    );
  }
}
