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
                          text: "Let’s Create Something Timeless",
                          letterSpacing: 4,
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
                          children: [
                            Expanded(
                              child: TField(
                                text: "FIRST NAME",
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Expanded(
                              child: TField(
                                text: "LAST NAME",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TField(text: "EMAIL"),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Expanded(
                              child: TField(
                                text: "SUBJECT",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TField(
                          text: "MESSAGE",
                          height: 150,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 25,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: TColors.orange,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      0,
                                    ),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 40,
                                  ),
                                ),
                                onPressed: () {},
                                child: TText(
                                  text: "SEND",
                                  fontFamily: "Picasso",
                                  color: TColors.white,
                                  letterSpacing: 2,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
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

class TField extends StatelessWidget {
  const TField({
    super.key,
    required this.text,
    this.height = 30.0,
  });
  final String text;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TText(
          text: text,
          fontFamily: "Picasso",
          letterSpacing: 2,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: height,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: TColors.white),
          ),
        ),
      ],
    );
  }
}
