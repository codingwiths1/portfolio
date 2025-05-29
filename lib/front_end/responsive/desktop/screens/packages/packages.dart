import 'package:flutter/material.dart';

import '../../../../utils/helper/color.dart';
import '../../../../utils/widgets/constraints.dart';
import '../about/about.dart';
import '../home/home.dart';

class TDesktopPackages extends StatelessWidget {
  const TDesktopPackages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TConstraints(
        child: Row(
          children: [
            TLeftNav(),
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
                                  text: "PRESTIGE PACKAGES",
                                  letterSpacing: 4,
                                  fontSize: 40,
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
                                  "Crafted for visionaries who demand distinction. Each package is a curated digital experience — tailored with precision, elegance, and intent.",
                              fontWeight: FontWeight.w100,
                              letterSpacing: 4,
                              fontFamily: "Picasso",
                              fontSize: 16,
                            ),
                            SizedBox(
                              height: 70,
                            ),
                            TText(
                              text: "Select your suite and begin your legacy.",
                              fontWeight: FontWeight.w500,
                              fontFamily: "Betty",
                              fontSize: 25,
                            ),
                            SizedBox(
                              height: 10,
                            ),

                            /// Package Cards
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TPackage(
                                  onTap: () {
                                    debugPrint(
                                      "PACKAGE 1 TAPPED",
                                    );
                                  },
                                  package: 'The Foundation Build',
                                  description:
                                      'For emerging brands that desire elegance from day one.',
                                  price: '500',
                                  details1: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Brand",
                                          style: TextStyle(
                                            overflow: TextOverflow.clip,
                                            fontSize: 10,
                                            fontFamily: "AscendantSerif",
                                            color: TColors.black,
                                          ),
                                        ),
                                        TextSpan(
                                          text: " - ",
                                          style: TextStyle(
                                            overflow: TextOverflow.clip,
                                            fontSize: 10,
                                            fontFamily: "Inter",
                                            color: TColors.black,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "inspired color palette",
                                          style: TextStyle(
                                            overflow: TextOverflow.clip,
                                            fontSize: 10,
                                            fontFamily: "AscendantSerif",
                                            color: TColors.black,
                                          ),
                                        ),
                                        TextSpan(
                                          text: " & ",
                                          style: TextStyle(
                                            overflow: TextOverflow.clip,
                                            fontSize: 10,
                                            fontFamily: "Inter",
                                            color: TColors.black,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "typography",
                                          style: TextStyle(
                                            overflow: TextOverflow.clip,
                                            fontSize: 10,
                                            fontFamily: "AscendantSerif",
                                            color: TColors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  stack: Image.asset(
                                    "assets/icons/crown.png",
                                    fit: BoxFit.contain,
                                    height: 20,
                                    width: 20,
                                    color: TColors.orange,
                                  ),
                                  details2: TText(
                                    text: "Premium contact form integration",
                                    fontFamily: "AscendantSerif",
                                    color: TColors.black,
                                    fontSize: 10,
                                  ),
                                  days: '5',
                                ),
                                TPackage(
                                  onTap: () {
                                    debugPrint(
                                      "PACKAGE 2 TAPPED",
                                    );
                                  },
                                  package: 'The Prestige Suite',
                                  description:
                                      'Polished presence for growing visionaries.',
                                  price: '1,000',
                                  widget: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 5.0,
                                        ),
                                        child: Icon(
                                          Icons.circle,
                                          size: 3,
                                          color: TColors.black,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Expanded(
                                        child: TText(
                                          text: "Basic SEO optimization",
                                          fontFamily: "AscendantSerif",
                                          color: TColors.black,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  details1: TText(
                                    text:
                                        "Strategic layout design for conversions",
                                    fontFamily: "AscendantSerif",
                                    color: TColors.black,
                                    fontSize: 10,
                                  ),
                                  stack: Row(
                                    children: [
                                      Image.asset(
                                        "assets/icons/crown.png",
                                        fit: BoxFit.contain,
                                        height: 18,
                                        width: 18,
                                        color: TColors.orange,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image.asset(
                                        "assets/icons/crown.png",
                                        fit: BoxFit.contain,
                                        height: 18,
                                        width: 18,
                                        color: TColors.orange,
                                      ),
                                    ],
                                  ),
                                  details2: TText(
                                    text: "Premium mobile experience",
                                    fontFamily: "AscendantSerif",
                                    color: TColors.black,
                                    fontSize: 10,
                                  ),
                                  days: '10',
                                ),
                                TPackage(
                                  onTap: () {
                                    debugPrint(
                                      "PACKAGE 3 TAPPED",
                                    );
                                  },
                                  package: ' The Elite Experience',
                                  description:
                                      'A bespoke digital statement for established brands.',
                                  price: '2500',
                                  details1: TText(
                                    text:
                                        "Product showcase or portfolio integration",
                                    fontFamily: "AscendantSerif",
                                    color: TColors.black,
                                    fontSize: 10,
                                  ),
                                  stack: Row(
                                    children: [
                                      Image.asset(
                                        "assets/icons/crown.png",
                                        fit: BoxFit.contain,
                                        height: 16,
                                        width: 16,
                                        color: TColors.orange,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image.asset(
                                        "assets/icons/crown.png",
                                        fit: BoxFit.contain,
                                        height: 16,
                                        width: 16,
                                        color: TColors.orange,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image.asset(
                                        "assets/icons/crown.png",
                                        fit: BoxFit.contain,
                                        height: 16,
                                        width: 16,
                                        color: TColors.orange,
                                      ),
                                    ],
                                  ),
                                  details2: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "High",
                                          style: TextStyle(
                                            overflow: TextOverflow.clip,
                                            fontSize: 10,
                                            fontFamily: "AscendantSerif",
                                            color: TColors.black,
                                          ),
                                        ),
                                        TextSpan(
                                          text: " - ",
                                          style: TextStyle(
                                            overflow: TextOverflow.clip,
                                            fontSize: 10,
                                            fontFamily: "Inter",
                                            color: TColors.black,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "end contact or booking flow",
                                          style: TextStyle(
                                            overflow: TextOverflow.clip,
                                            fontSize: 10,
                                            fontFamily: "AscendantSerif",
                                            color: TColors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  widget: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 5.0,
                                        ),
                                        child: Icon(
                                          Icons.circle,
                                          size: 3,
                                          color: TColors.black,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Expanded(
                                        child: TText(
                                          text: "Priority revisions",
                                          fontFamily: "AscendantSerif",
                                          color: TColors.black,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  days: '15',
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 70,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TPackage(
                                  onTap: () {
                                    debugPrint("PACKAGE 4 TAPPED");
                                  },
                                  package: 'The Signature Build',
                                  description:
                                      'Tailored for industry leaders and timeless brands.',
                                  price: '5,000',
                                  details1: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Custom full",
                                          style: TextStyle(
                                            overflow: TextOverflow.clip,
                                            fontSize: 10,
                                            fontFamily: "AscendantSerif",
                                            color: TColors.black,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "-",
                                          style: TextStyle(
                                            overflow: TextOverflow.clip,
                                            fontSize: 10,
                                            fontFamily: "Inter",
                                            color: TColors.black,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              "width visuals, parallax design",
                                          style: TextStyle(
                                            overflow: TextOverflow.clip,
                                            fontSize: 10,
                                            fontFamily: "AscendantSerif",
                                            color: TColors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  stack: Row(
                                    children: [
                                      Image.asset(
                                        "assets/icons/crown.png",
                                        fit: BoxFit.contain,
                                        height: 14,
                                        width: 14,
                                        color: TColors.orange,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image.asset(
                                        "assets/icons/crown.png",
                                        fit: BoxFit.contain,
                                        height: 14,
                                        width: 14,
                                        color: TColors.orange,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image.asset(
                                        "assets/icons/crown.png",
                                        fit: BoxFit.contain,
                                        height: 14,
                                        width: 14,
                                        color: TColors.orange,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image.asset(
                                        "assets/icons/crown.png",
                                        fit: BoxFit.contain,
                                        height: 14,
                                        width: 14,
                                        color: TColors.orange,
                                      ),
                                    ],
                                  ),
                                  details2: TText(
                                    text: "Cinematic interactions",
                                    fontFamily: "AscendantSerif",
                                    color: TColors.black,
                                    fontSize: 10,
                                  ),
                                  widget: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 5.0,
                                            ),
                                            child: Icon(
                                              Icons.circle,
                                              size: 3,
                                              color: TColors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Expanded(
                                            child: Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "Fully bespoke UX",
                                                    style: TextStyle(
                                                      overflow:
                                                          TextOverflow.clip,
                                                      fontSize: 10,
                                                      fontFamily:
                                                          "AscendantSerif",
                                                      color: TColors.black,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: "/",
                                                    style: TextStyle(
                                                      overflow:
                                                          TextOverflow.clip,
                                                      fontSize: 10,
                                                      fontFamily: "Inter",
                                                      color: TColors.black,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: "UX flow",
                                                    style: TextStyle(
                                                      overflow:
                                                          TextOverflow.clip,
                                                      fontSize: 10,
                                                      fontFamily:
                                                          "AscendantSerif",
                                                      color: TColors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 5.0,
                                            ),
                                            child: Icon(
                                              Icons.circle,
                                              size: 3,
                                              color: TColors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Expanded(
                                            child: TText(
                                              text:
                                                  "Luxury copywriting included",
                                              fontFamily: "AscendantSerif",
                                              color: TColors.black,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 5.0,
                                            ),
                                            child: Icon(
                                              Icons.circle,
                                              size: 3,
                                              color: TColors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Expanded(
                                            child: Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "Concierge",
                                                    style: TextStyle(
                                                      overflow:
                                                          TextOverflow.clip,
                                                      fontSize: 10,
                                                      fontFamily:
                                                          "AscendantSerif",
                                                      color: TColors.black,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: "-",
                                                    style: TextStyle(
                                                      overflow:
                                                          TextOverflow.clip,
                                                      fontSize: 10,
                                                      fontFamily: "Inter",
                                                      color: TColors.black,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: "style collaboration",
                                                    style: TextStyle(
                                                      overflow:
                                                          TextOverflow.clip,
                                                      fontSize: 10,
                                                      fontFamily:
                                                          "AscendantSerif",
                                                      color: TColors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  days: '18',
                                ),
                                TPackage(
                                  onTap: () {
                                    debugPrint("PACKAGE 5 TAPPED");
                                  },
                                  widget: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 5.0,
                                            ),
                                            child: Icon(
                                              Icons.circle,
                                              size: 3,
                                              color: TColors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Expanded(
                                            child: Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "E",
                                                    style: TextStyle(
                                                      overflow:
                                                          TextOverflow.clip,
                                                      fontSize: 10,
                                                      fontFamily:
                                                          "AscendantSerif",
                                                      color: TColors.black,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: "-",
                                                    style: TextStyle(
                                                      overflow:
                                                          TextOverflow.clip,
                                                      fontSize: 10,
                                                      fontFamily: "Inter",
                                                      color: TColors.black,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        "commerce or booking systems",
                                                    style: TextStyle(
                                                      overflow:
                                                          TextOverflow.clip,
                                                      fontSize: 10,
                                                      fontFamily:
                                                          "AscendantSerif",
                                                      color: TColors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 5.0,
                                            ),
                                            child: Icon(
                                              Icons.circle,
                                              size: 3,
                                              color: TColors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Expanded(
                                            child: Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text:
                                                        "Advanced strategy, copy, design",
                                                    style: TextStyle(
                                                      overflow:
                                                          TextOverflow.clip,
                                                      fontSize: 10,
                                                      fontFamily:
                                                          "AscendantSerif",
                                                      color: TColors.black,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: " & ",
                                                    style: TextStyle(
                                                      overflow:
                                                          TextOverflow.clip,
                                                      fontSize: 10,
                                                      fontFamily: "Inter",
                                                      color: TColors.black,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: "launch",
                                                    style: TextStyle(
                                                      overflow:
                                                          TextOverflow.clip,
                                                      fontSize: 10,
                                                      fontFamily:
                                                          "AscendantSerif",
                                                      color: TColors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 5.0,
                                            ),
                                            child: Icon(
                                              Icons.circle,
                                              size: 3,
                                              color: TColors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Expanded(
                                            child: Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "Web",
                                                    style: TextStyle(
                                                      overflow:
                                                          TextOverflow.clip,
                                                      fontSize: 10,
                                                      fontFamily:
                                                          "AscendantSerif",
                                                      color: TColors.black,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: " & ",
                                                    style: TextStyle(
                                                      overflow:
                                                          TextOverflow.clip,
                                                      fontSize: 10,
                                                      fontFamily: "Inter",
                                                      color: TColors.black,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: "mobile apps,",
                                                    style: TextStyle(
                                                      overflow:
                                                          TextOverflow.clip,
                                                      fontSize: 10,
                                                      fontFamily:
                                                          "AscendantSerif",
                                                      color: TColors.black,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: " full",
                                                    style: TextStyle(
                                                      overflow:
                                                          TextOverflow.clip,
                                                      fontSize: 10,
                                                      fontFamily: "Inter",
                                                      color: TColors.black,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: "-",
                                                    style: TextStyle(
                                                      overflow:
                                                          TextOverflow.clip,
                                                      fontSize: 10,
                                                      fontFamily: "Inter",
                                                      color: TColors.black,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: "stack experience",
                                                    style: TextStyle(
                                                      overflow:
                                                          TextOverflow.clip,
                                                      fontSize: 10,
                                                      fontFamily:
                                                          "AscendantSerif",
                                                      color: TColors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  description:
                                      'An elite brand ecosystem, completely handcrafted.',
                                  package: 'The Legacy Edition',
                                  price: '10,000',
                                  details1: TText(
                                    text: "Brand film or storytelling visuals",
                                    fontFamily: "AscendantSerif",
                                    color: TColors.black,
                                    fontSize: 10,
                                  ),
                                  stack: Row(
                                    children: [
                                      Image.asset(
                                        "assets/icons/crown.png",
                                        fit: BoxFit.contain,
                                        height: 12,
                                        width: 12,
                                        color: TColors.orange,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image.asset(
                                        "assets/icons/crown.png",
                                        fit: BoxFit.contain,
                                        height: 12,
                                        width: 12,
                                        color: TColors.orange,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image.asset(
                                        "assets/icons/crown.png",
                                        fit: BoxFit.contain,
                                        height: 12,
                                        width: 12,
                                        color: TColors.orange,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image.asset(
                                        "assets/icons/crown.png",
                                        fit: BoxFit.contain,
                                        height: 12,
                                        width: 12,
                                        color: TColors.orange,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image.asset(
                                        "assets/icons/crown.png",
                                        fit: BoxFit.contain,
                                        height: 12,
                                        width: 12,
                                        color: TColors.orange,
                                      ),
                                    ],
                                  ),
                                  details2: TText(
                                    text: "Ongoing digital care concierge",
                                    fontFamily: "AscendantSerif",
                                    color: TColors.black,
                                    fontSize: 10,
                                  ),
                                  days: '25',
                                ),
                              ],
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

class TLeftNav extends StatelessWidget {
  const TLeftNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}

class TPackage extends StatelessWidget {
  const TPackage({
    super.key,
    required this.package,
    required this.description,
    required this.price,
    this.onTap,
    required this.details1,
    required this.stack,
    required this.details2,
    this.widget = const SizedBox(),
    required this.days,
  });
  final String package;
  final String description;
  final String price;
  final String days;

  final void Function()? onTap;
  final Widget details1;
  final Widget details2;

  final Widget stack;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 150,
          height: 300,
          padding: EdgeInsets.all(
            10,
          ),
          color: TColors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 150,
                        color: Colors.white,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 150,
                          width: 150,
                          color: TColors.black87,
                        ),
                      ),
                      Positioned(
                        top: 3,
                        right: 3,
                        child: stack,
                        // Image.asset(
                        //   "assets/icons/crown.png",
                        //   fit: BoxFit.contain,
                        //   height: 20,
                        //   width: 20,
                        //   color: TColors.orange,
                        // ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TText(
                    text: package,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: "AscendantSerif",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TText(
                    text: description,
                    fontSize: 9,
                    fontWeight: FontWeight.w100,
                    fontFamily: "AscendantSerif",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TText(
                    text: "£",
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffa0864a),
                    fontFamily: "Inter",
                  ),
                  TText(
                    text: price,
                    color: Color(0xffa0864a),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: "AscendantSerif",
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          color: TColors.white,
          width: 150,
          padding: EdgeInsets.all(
            10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5.0,
                    ),
                    child: Icon(
                      Icons.circle,
                      size: 3,
                      color: TColors.black,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: details1,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5.0,
                    ),
                    child: Icon(
                      Icons.circle,
                      size: 3,
                      color: TColors.black,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(child: details2),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              widget,
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5.0,
                    ),
                    child: Icon(
                      Icons.circle,
                      size: 3,
                      color: TColors.black,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: days,
                            style: TextStyle(
                              overflow: TextOverflow.clip,
                              fontSize: 10,
                              fontFamily: "AscendantSerif",
                              color: TColors.black,
                            ),
                          ),
                          TextSpan(
                            text: " - ",
                            style: TextStyle(
                              overflow: TextOverflow.clip,
                              fontSize: 10,
                              fontFamily: "Inter",
                              color: TColors.black,
                            ),
                          ),
                          TextSpan(
                            text: "days delivery",
                            style: TextStyle(
                              overflow: TextOverflow.clip,
                              fontSize: 10,
                              fontFamily: "AscendantSerif",
                              color: TColors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
                child: ElevatedButton(
                  onPressed: () {
                    onTap!();
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        0,
                      ),
                    ),
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    backgroundColor: Color(0xffa0864a),
                    fixedSize: Size(
                      double.maxFinite,
                      0,
                    ),
                    elevation: 0,
                  ),
                  child: Center(
                    child: TText(
                      text: "BOOK NOW",
                      fontSize: 8,
                      fontWeight: FontWeight.bold,
                      color: TColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
