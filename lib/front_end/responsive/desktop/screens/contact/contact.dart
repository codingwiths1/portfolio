import 'package:flutter/material.dart';
import 'package:portfolio/front_end/utils/widgets/constraints.dart';

import '../../../../utils/helper/color.dart';
import '../about/about.dart';
import '../home/home.dart';

class TDesktopContact extends StatelessWidget {
  const TDesktopContact({super.key});

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
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 40,
                      horizontal: 80,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                              text: "CONTACT",
                              letterSpacing: 4,
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              color: TColors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "Let",
                                style: TextStyle(
                                  letterSpacing: 2,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: "AscendantSerif",
                                ),
                              ),
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "’",
                                    style: TextStyle(
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      fontFamily: "Inter",
                                    ),
                                  ),
                                ],
                              ),
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "s Create Something Timeless",
                                    style: TextStyle(
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      fontFamily: "AscendantSerif",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TText(
                          fontStyle: FontStyle.italic,
                          text:
                              "Whether it’s a bespoke digital experience or a visionary product launch, I welcome meaningful partnerships with those who value design, detail, and distinction.",
                          fontWeight: FontWeight.w100,
                          fontSize: 14,
                          fontFamily: "AscendantSerif",
                        ),
                        SizedBox(
                          height: 120,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/icons/monitor.png",
                                    color: TColors.white,
                                    height: 100,
                                    width: 100,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  TText(
                                    text: "www.portfolio.com",
                                    fontFamily: "AscendantSerif",
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/icons/mail.png",
                                    color: TColors.white,
                                    height: 100,
                                    width: 100,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "craftedbybenjamin",
                                          style: TextStyle(
                                            fontFamily: "AscendantSerif",
                                          ),
                                        ),
                                        TextSpan(
                                          text: "@",
                                          style: TextStyle(
                                            fontFamily: "Inter",
                                          ),
                                        ),
                                        TextSpan(
                                          text: "gmail.com",
                                          style: TextStyle(
                                            fontFamily: "AscendantSerif",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 150,
                        )
                      ],
                    ),
                  ),
                ),
                TNav()
              ],
            ),
          ),
        ],
      )),
    );
  }
}
