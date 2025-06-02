import 'package:flutter/material.dart';

import '../../../../utils/helper/color.dart';
import '../../../desktop/screens/contact/contact.dart';
import '../../../desktop/screens/home/home.dart';

class TMobileContact extends StatelessWidget {
  const TMobileContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 40,
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
                        fontSize: 25,
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
                  TField(
                    text: "FIRST NAME",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TField(
                    text: "LAST NAME",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TField(
                    text: "EMAIL",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TField(
                    text: "SUBJECT",
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
                    height: 100,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TText(
                          text: "Prefer direct contact?",
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Picasso",
                          letterSpacing: 4,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: TText(
                                text: "Reach out at: ",
                                fontSize: 14,
                                fontWeight: FontWeight.w100,
                                fontFamily: "Picasso",
                                letterSpacing: 2,
                              ),
                            ),
                            Flexible(
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      0,
                                    ),
                                  ),
                                  padding: EdgeInsets.zero,
                                  elevation: 0,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
                                child: TText(
                                  text: "shalomluxestudio@gmail.com",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w100,
                                  fontFamily: "Picasso",
                                  letterSpacing: 0,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
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
    );
  }
}
