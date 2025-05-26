import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/front_end/responsive/desktop/screens/about/t_about.dart';
import 'package:portfolio/front_end/responsive/desktop/screens/home/home.dart';
import 'package:portfolio/front_end/utils/helper/color.dart';
import 'package:portfolio/front_end/utils/widgets/constraints.dart';

class TDesktopAbout extends StatelessWidget {
  const TDesktopAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TConstraints(
        child: Row(
          children: [
            Expanded(
              child: Drawer(
                backgroundColor: TColors.orange,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/WhatsApp Image 2025-05-24 at 11.23.53 AM.jpeg",
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
                              color: TColors.white,
                              size: 8,
                            ),
                            TLittleDots(),
                            TNavText(
                              text: 'HOME',
                            ),
                            TLittleDots(),
                            TNavText(
                              text: 'ABOUT ME',
                            ),
                            TLittleDots(),
                            TNavText(
                              text: 'RESUME',
                            ),
                            TLittleDots(),
                            TNavText(
                              text: 'PORTFOLIO',
                            ),
                            TLittleDots(),
                            TNavText(
                              text: 'TESTIMONIALS',
                            ),
                            TLittleDots(),
                            TNavText(
                              text: 'OFFERS',
                            ),
                            TLittleDots(),
                            TNavText(
                              text: 'CONTACT',
                            ),
                            TLittleDots(),
                            Icon(
                              Icons.circle,
                              color: TColors.white,
                              size: 8,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
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
                                  text: "ABOUT ME",
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
                              fontSize: 12,
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Image.asset(
                                    "assets/images/Add a heading.png",
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
                                                    Image.asset(
                                                      "assets/icons/code.png",
                                                      color: TColors.white,
                                                      height: 50,
                                                      width: 50,
                                                      fit: BoxFit.contain,
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
                                                        fontSize: 12,
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
                                                  fontSize: 10,
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
                                                    Image.asset(
                                                      "assets/icons/immersive.png",
                                                      color: TColors.white,
                                                      height: 50,
                                                      width: 50,
                                                      fit: BoxFit.contain,
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
                                                        fontSize: 12,
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
                                                  fontSize: 10,
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
                                                    Image.asset(
                                                      "assets/icons/website.png",
                                                      color: TColors.white,
                                                      height: 50,
                                                      width: 50,
                                                      fit: BoxFit.contain,
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
                                                        fontSize: 12,
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
                                                  fontSize: 10,
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
                                                    Image.asset(
                                                      "assets/icons/speech-bubble.png",
                                                      color: TColors.white,
                                                      height: 50,
                                                      width: 50,
                                                      fit: BoxFit.contain,
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
                                                        fontSize: 12,
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
                                                  fontSize: 10,
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
                              height: 70,
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

class TNavText extends StatelessWidget {
  const TNavText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: TText(
        fontSize: 12,
        text: text,
        letterSpacing: 2,
        color: TColors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
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
            (i) => Container(
                  width: 2,
                  height: 2,
                  color: TColors.white,
                )),
      ),
    );
  }
}
