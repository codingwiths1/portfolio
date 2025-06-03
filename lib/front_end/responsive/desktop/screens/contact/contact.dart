import 'package:flutter/material.dart';
import 'package:portfolio/back_end/function/function.dart';
import 'package:portfolio/front_end/utils/widgets/constraints.dart';

import '../../../../utils/helper/color.dart';
import '../about/about.dart';
import '../home/home.dart';

class TDesktopContact extends StatefulWidget {
  const TDesktopContact({super.key});

  @override
  State<TDesktopContact> createState() => _TDesktopContactState();
}

class _TDesktopContactState extends State<TDesktopContact> {
  @override
  void dispose() {
    TFunction.firstName.clear();
    TFunction.lastName.clear();
    TFunction.email.clear();
    TFunction.subject.clear();
    TFunction.message.clear();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController subject =
        TextEditingController(text: "Proposal for a Premium Website or App");
    final TextEditingController message = TextEditingController(
        text:
            "I’m seeking a tailored web or mobile experience that reflects the sophistication of my brand. I would love to explore your premium packages and understand how we can collaborate.");

    validate() {
      var firstName = TFunction.firstName.text.trim();
      if (firstName.isEmpty) {
        TFunction.fieldValidation(
            context, "first name", "First Name can't be empty");
      } else if (TFunction.lastName.text.trim().isEmpty) {
        TFunction.fieldValidation(
            context, "last name", "Last Name can't be empty");
      } else if (TFunction.email.text.trim().isEmpty) {
        TFunction.fieldValidation(context, "email", "Email can't be empty");
      } else {
        TFunction.confirmEmail(context,
            subject: subject.text.trim(), message: message.text.trim());
      }
    }

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
                                controller: TFunction.firstName,
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Expanded(
                              child: TField(
                                text: "LAST NAME",
                                controller: TFunction.lastName,
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
                              child: TField(
                                text: "EMAIL",
                                controller: TFunction.email,
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Expanded(
                              child: TField(
                                text: "SUBJECT",
                                controller: subject,
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
                          controller: message,
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
                                onPressed: validate,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
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
                                  children: [
                                    TText(
                                      text: "Reach out at: ",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w100,
                                      fontFamily: "Picasso",
                                      letterSpacing: 2,
                                    ),
                                    TextButton(
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
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
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
    required this.controller,
  });
  final String text;
  final double height;
  final TextEditingController controller;
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
          fontSize: 14,
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: height,
          child: ClipRRect(
            child: TextField(
              controller: controller,
              textAlignVertical: height > 30
                  ? TextAlignVertical.top
                  : TextAlignVertical.center,
              expands: height > 30 ? true : false,
              maxLines: height > 30 ? null : 1,
              style: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 14,
                  letterSpacing: 2,
                  fontFamily: "Picasso"),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(
                  left: 20,
                  right: 10,
                  top: 10,
                  bottom: 5,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    0,
                  ),
                  borderSide: BorderSide(
                    color: TColors.white,
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    0,
                  ),
                  borderSide: BorderSide(
                    color: TColors.white,
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
