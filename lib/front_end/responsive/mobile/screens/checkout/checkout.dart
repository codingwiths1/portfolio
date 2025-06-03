
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../back_end/function/function.dart';
import '../../../../utils/helper/color.dart';
import '../../../desktop/screens/contact/contact.dart';
import '../../../desktop/screens/home/home.dart';

class TMobileCheckout extends StatefulWidget {
  const TMobileCheckout(
      {super.key,
      required this.package,
      required this.description,
      required this.price});
  final String package;
  final String description;
  final String price;

  @override
  State<TMobileCheckout> createState() => _TMobileCheckoutState();
}

class _TMobileCheckoutState extends State<TMobileCheckout> {
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
    final now = DateTime.now();
    final format = DateFormat("dd-MM-yyyy").format(now);
    final TextEditingController subject = TextEditingController(text: widget.package);
    final TextEditingController message = TextEditingController(
        text:
        "Hello Shalom, I’m interested in the ${widget.package}. I believe it aligns perfectly with the level of elegance and precision I’m seeking. Kindly guide me through the next steps.");

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
        // TFunction.confirmEmail(context);
      }
    }


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
                                        text: " ${widget.package}",
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
                                        text: widget.description,
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
                                    text: format,
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
                                      text: "£${widget.price}",
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
                                  controller: TFunction.firstName,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TField(
                                  text: "LAST NAME",
                                  controller: TFunction.lastName,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TField(
                                  text: "SUBJECT",
                                  controller: subject,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TField(
                                  text: "EMAIL",
                                  controller: TFunction.email,
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
                                      onPressed:validate,
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
