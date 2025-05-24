import 'package:flutter/material.dart';
import 'package:portfolio/front_end/responsive/desktop/screens/home/home.dart';
import 'package:portfolio/front_end/utils/helper/color.dart';

class TDesktopAbout extends StatelessWidget {
  const TDesktopAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Drawer(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/WhatsApp Image 2025-05-24 at 11.23.53 AM.jpeg",
                      fit: BoxFit.cover,
                      width: double.maxFinite,
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
            child: Container(
              color: TColors.orange,
            ),
          ),
        ],
      ),
    );
  }
}

class TNavText extends StatelessWidget {
  const TNavText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: TText(
        text: text,
        letterSpacing: 2,
        color: TColors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class TLittleDots extends StatelessWidget {
  const TLittleDots({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            5,
            (i) => Container(
                  width: 2,
                  height: 2,
                  color: Colors.white,
                )),
      ),
    );
  }
}
