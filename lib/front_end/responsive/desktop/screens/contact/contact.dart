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
                                text: "CONTACT",
                                letterSpacing: 4,
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                                color: TColors.white,
                              ),
                            ),
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
      )),
    );
  }
}
