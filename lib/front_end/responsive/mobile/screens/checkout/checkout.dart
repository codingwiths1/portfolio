import 'package:flutter/material.dart';

import '../../../../utils/helper/color.dart';
import '../../../desktop/screens/contact/contact.dart';
import '../../../desktop/screens/home/home.dart';

class TMobileCheckout extends StatelessWidget {
  const TMobileCheckout(
      {super.key,
      required this.package,
      required this.description,
      required this.price});
  final String package;
  final String description;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Drawer(
            width: double.maxFinite,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: 40,
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
                          text: "RESERVE YOUR DIGITAL MASTERPIECE",
                          fontFamily: "Picasso",
                          letterSpacing: 4,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: TColors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TText(
                      text:
                          "You’re moments away from securing a bespoke experience—crafted with precision, elegance, and intent.",
                      fontWeight: FontWeight.w100,
                      letterSpacing: 4,
                      fontFamily: "Picasso",
                      fontSize: 16,
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    TText(
                      text: "What You’re About to Commit To",
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2,
                      fontFamily: "Picasso",
                      fontSize: 25,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Container(
                            padding: EdgeInsets.all(
                              20,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.3,
                                color: TColors.white,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Package Selected:",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 2,
                                          fontFamily: "Picasso",
                                          color: TColors.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " $package",
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w100,
                                          letterSpacing: 2,
                                          fontFamily: "Betty",
                                          color: TColors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TText(
                                        text: description,
                                        fontWeight: FontWeight.w100,
                                        fontFamily: "Picasso",
                                        letterSpacing: 2,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                TText(
                                  text: "DATE",
                                  letterSpacing: 2,
                                  fontFamily: "Picasso",
                                  fontWeight: FontWeight.bold,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, bottom: 20),
                                  child: TText(
                                    text: "2025-5-12",
                                    letterSpacing: 2,
                                    fontFamily: "Picasso",
                                    fontWeight: FontWeight.w100,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TText(
                                      text: "£$price",
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffa0864a),
                                      fontFamily: "Inter",
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Divider(
                                  color: TColors.white,
                                  thickness: 0.3,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TText(
                                  text:
                                      "Please fill in the details below so we may prepare your bespoke proposal.",
                                  letterSpacing: 2,
                                  fontFamily: "Picasso",
                                  fontWeight: FontWeight.w100,
                                  fontSize: 16,
                                ),
                                SizedBox(
                                  height: 35,
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
                                  text: "SUBJECT",
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
                                  text: "MESSAGE",
                                  height: 150,
                                ),
                                SizedBox(
                                  height: 100,
                                ),
                                IntrinsicWidth(
                                  stepWidth: double.maxFinite,
                                  child: SizedBox(
                                    height: 25,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: TColors.orange,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            0,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: TText(
                                        fontSize: 16,
                                        text: "BOOK AN APPOINTMENT",
                                        fontFamily: "Picasso",
                                        color: TColors.white,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.w100,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          TNav()
        ],
      ),
    );
  }
}
