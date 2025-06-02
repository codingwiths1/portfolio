import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../front_end/responsive/desktop/screens/home/home.dart';
import '../../front_end/route/route.dart';
import '../../front_end/utils/helper/color.dart';

class TFunction {
  static RxBool showing = false.obs;
  static RxBool isLoaded = false.obs;
  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width > 700 &&
        MediaQuery.of(context).size.width < 1200;
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width > 300 &&
        MediaQuery.of(context).size.width < 700;
  }

  static TextEditingController firstName = TextEditingController();
  static TextEditingController lastName = TextEditingController();
  static TextEditingController email = TextEditingController();
  static TextEditingController subject = TextEditingController();
  static TextEditingController message = TextEditingController();

  static fieldValidation(BuildContext context, String text,String message) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: TColors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            0,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(
                20,
              ),
              margin: EdgeInsets.all(
                20,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.5,
                  color: Colors.white,
                ),
              ),
              width: 400,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: TText(
                      text: "INVALID ${text.toUpperCase()}!",
                      fontSize: 20,
                      fontFamily: "Betty",
                      letterSpacing: 4,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: TText(
                      text: message,
                      fontWeight: FontWeight.w100,
                      letterSpacing: 2,
                      fontFamily: "Picasso",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static confirmEmail(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: TColors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            0,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(
                20,
              ),
              margin: EdgeInsets.all(
                20,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.5,
                  color: Colors.white,
                ),
              ),
              width: 400,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: TText(
                            text: "CONFIRM YOUR EMAIL",
                            fontSize: 20,
                            fontFamily: "Betty",
                            letterSpacing: 4,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TText(
                          text: "Kindly Confirm Your Details",
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 4,
                          fontFamily: "Picasso",
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TText(
                          text:
                              "Just to ensure everything is perfect before we proceed.",
                          fontWeight: FontWeight.w100,
                          letterSpacing: 4,
                          fontFamily: "Picasso",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TText(
                          text: "You entered:",
                          fontWeight: FontWeight.w100,
                          letterSpacing: 4,
                          fontFamily: "Picasso",
                        ),
                        TText(
                          text: email.text.trim(),
                          fontWeight: FontWeight.bold,
                          letterSpacing: 4,
                          fontFamily: "Picasso",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TText(
                          text: "Is this correct?",
                          fontWeight: FontWeight.bold,
                          letterSpacing: 4,
                          fontFamily: "Picasso",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 25,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: TColors.white,
                              fixedSize: Size(
                                double.maxFinite,
                                0,
                              ),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  0,
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                              showDialog(
                                context: context,
                                builder: (context) => Dialog(
                                  backgroundColor: TColors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      0,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(
                                          20,
                                        ),
                                        margin: EdgeInsets.all(
                                          20,
                                        ),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 0.5,
                                            color: Colors.white,
                                          ),
                                        ),
                                        width: 400,
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Center(
                                                    child: TText(
                                                      text:
                                                          "THANK YOU, ${firstName.text.trim().toUpperCase()}!",
                                                      fontSize: 20,
                                                      fontFamily: "Betty",
                                                      letterSpacing: 4,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 30,
                                                  ),
                                                  TText(
                                                    text:
                                                        "Your message has been received — we will respond promptly.",
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    letterSpacing: 4,
                                                    fontFamily: "Picasso",
                                                  ),
                                                  SizedBox(
                                                    height: 30,
                                                  ),
                                                  TText(
                                                    text:
                                                        "Expect an email confirmation shortly at ",
                                                    fontWeight: FontWeight.w100,
                                                    letterSpacing: 4,
                                                    fontFamily: "Picasso",
                                                  ),
                                                  TText(
                                                    text: email.text.trim(),
                                                    fontWeight: FontWeight.bold,
                                                    letterSpacing: 4,
                                                    fontFamily: "Picasso",
                                                  ),
                                                  TText(
                                                    text:
                                                        "We look forward to crafting excellence together.",
                                                    fontWeight: FontWeight.w100,
                                                    letterSpacing: 4,
                                                    fontFamily: "Picasso",
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 40,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 25,
                                                    child: ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            TColors.white,
                                                        fixedSize: Size(
                                                          double.maxFinite,
                                                          0,
                                                        ),
                                                        tapTargetSize:
                                                            MaterialTapTargetSize
                                                                .shrinkWrap,
                                                        padding:
                                                            EdgeInsets.zero,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            0,
                                                          ),
                                                        ),
                                                      ),
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                        context.go(
                                                            TRoutes.packages);
                                                      },
                                                      child: TText(
                                                        text:
                                                            "VIEW PACKAGES AGAIN",
                                                        fontSize: 12,
                                                        color: TColors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        letterSpacing: 2,
                                                        fontFamily: "Picasso",
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  SizedBox(
                                                    height: 25,
                                                    child: ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            TColors.black,
                                                        fixedSize: Size(
                                                          double.maxFinite,
                                                          0,
                                                        ),
                                                        tapTargetSize:
                                                            MaterialTapTargetSize
                                                                .shrinkWrap,
                                                        padding:
                                                            EdgeInsets.zero,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          side: BorderSide(
                                                            color:
                                                                TColors.white,
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            0,
                                                          ),
                                                        ),
                                                      ),
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                        context
                                                            .go(TRoutes.home);
                                                      },
                                                      child: TText(
                                                        text:
                                                            "RETURN TO HOMEPAGE",
                                                        fontSize: 12,
                                                        color: TColors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        letterSpacing: 2,
                                                        fontFamily: "Picasso",
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            child: TText(
                              text: "CONFIRM",
                              fontSize: 12,
                              color: TColors.black,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                              fontFamily: "Picasso",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 25,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: TColors.black,
                              fixedSize: Size(
                                double.maxFinite,
                                0,
                              ),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: TColors.white,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(
                                  0,
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: TText(
                              text: "EDIT EMAIL",
                              fontSize: 12,
                              color: TColors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                              fontFamily: "Picasso",
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
