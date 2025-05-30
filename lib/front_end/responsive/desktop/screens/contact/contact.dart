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
            child: TLeftNavText(),
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
                              text: "YOUR INVITATION",
                              letterSpacing: 4,
                              fontFamily: "Picasso",
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: TColors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TText(
                          text: "Let’s Create Something Timeless",letterSpacing: 4,
                          fontFamily: "Picasso",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TText(
                          fontFamily: "Picasso",
                          text:
                              "Every iconic brand begins with a conversation. If you're ready to craft something extraordinary, I invite you to connect. Discretion, dedication, and detail await.",
                          fontWeight: FontWeight.w100,
                          letterSpacing: 2,
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
                                    letterSpacing: 2,
                                    fontFamily: "Picasso",
                                    fontSize: 16,
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
                                  TText(
                                    text: "shalomluxestudio@gmail.com",
                                    letterSpacing: 2,
                                    fontFamily: "Picasso",
                                    fontSize: 16,
                                  )
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
