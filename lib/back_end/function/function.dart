import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../front_end/responsive/desktop/screens/home/home.dart';
import '../../front_end/route/route.dart';
import '../../front_end/utils/helper/color.dart';
import 'package:http/http.dart' as http;

import '../../main.dart';

class TFunction {
  static RxBool showing = false.obs;
  static bool isLoaded = false;
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

  static fieldValidation(BuildContext context, String text, String message) {
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

  static loader(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
          insetPadding: EdgeInsets.zero,
          backgroundColor: Color(0x1e000000),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              0,
            ),
          ),
          child: Center(
            child: SpinKitChasingDots(
              color: TColors.white,
            ),
          )),
    );
  }

  static errorMessage(BuildContext context) {
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
                            text: "ERROR",
                            fontSize: 20,
                            fontFamily: "Betty",
                            letterSpacing: 4,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TText(
                          text: "A Minor Delay in Your Journey.",
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                          fontFamily: "Picasso",
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TText(
                          text:
                              "It seems something momentarily interrupted your request. We’re already addressing it to ensure everything flows seamlessly.",
                          fontWeight: FontWeight.w100,
                          letterSpacing: 2,
                          fontFamily: "Picasso",
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    "Kindly try again shortly, or reach me directly at",
                                style: TextStyle(
                                  fontWeight: FontWeight.w100,
                                  fontFamily: "Picasso",
                                  letterSpacing: 2,
                                ),
                              ),
                              TextSpan(
                                text: " shalomluxestudio@gmail.com",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 4,
                                  fontFamily: "Inter",
                                ),
                              ),
                              TextSpan(
                                text: "-I’ll personally assist you.",
                                style: TextStyle(
                                  letterSpacing: 2,
                                  fontWeight: FontWeight.w100,
                                  fontFamily: "Picasso",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
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
                        },
                        child: TText(
                          text: "TRY AGAIN",
                          fontSize: 12,
                          color: TColors.black,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                          fontFamily: "Picasso",
                        ),
                      ),
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

  static sendEmail(BuildContext context, String subject, String message) async {
    try {
      isLoaded = true;
      if (isLoaded) {
        loader(nav.currentContext!);
      }
      final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");

      var request = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(
          {
            "service_id": "service_rce3tx1",
            "template_id": "template_lslxigg",
            "user_id": "k836QSyPaNn2eP9gB",
            "template_params": {
              "user_name": "${firstName.text.trim()} ${lastName.text.trim()}",
              "user_email": TFunction.email.text.trim(),
              "user_subject": subject,
              "user_message": message
            },
          },
        ),
      );

      if (request.statusCode == 200) {
        log("THIS IS THE RESPONSE ${request.body}");
        isLoaded = false;
        if (!isLoaded) {
          Navigator.pop(nav.currentContext!);
        }
        successMessage(nav.currentContext!);
      }
    } catch (e) {
      log("THIS IS THE ERROR $e");
      isLoaded = false;
      if (!isLoaded) {
        Navigator.pop(nav.currentContext!);
      }
      errorMessage(nav.currentContext!);
    }
  }

  static successMessage(BuildContext context) {
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
                          text: "Expect an email confirmation shortly at ",
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
                        SizedBox(
                          height: 5,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                              context.go(TRoutes.packages);
                            },
                            child: TText(
                              text: "VIEW PACKAGES AGAIN",
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
                              context.go(TRoutes.home);
                            },
                            child: TText(
                              text: "RETURN TO HOMEPAGE",
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

  static confirmEmail(BuildContext context,
      {required String subject, required String message}) {
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
                              sendEmail(context, subject, message);
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
