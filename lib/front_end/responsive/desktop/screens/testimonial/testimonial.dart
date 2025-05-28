import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio/front_end/utils/widgets/constraints.dart';

import '../../../../utils/helper/color.dart';
import '../about/about.dart';
import '../home/home.dart';

class TDesktopTestimonial extends StatelessWidget {
  const TDesktopTestimonial({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> details = [
      {
        "url":
            "assets/images/662c092880a6d18c31995dfd_66236531e8288ee0657ae7a7_Business%20Professional.webp",
        "package": "The Elite Experience",
        "price": "2,500",
        "brand": "NOIR Audio",
        "name": "Amélie Rousseau",
        "review":
            "Shalom has a rare ability to blend technology and sophistication. Our site feels powerful, cinematic, and beautifully silent — just like our speakers.He gave us exactly the tone and polish we needed to impress high-end distributors and audiophiles alike."
      },
      {
        "url":
            "assets/images/free-linkedin-ai-profile-picture-generator@3898895-6f9a6031-5f70-4244-90e6-3bce4fdb3f6e.webp",
        "package": "The Signature Build",
        "price": "5,000",
        "brand": "Liora Fine Jewellery",
        "name": "Clara DuBois",
        "review":
            "Shalom didn’t just build us a website — he built an experience. Every scroll, every transition, every pixel reflects the elegance of our brand. It exceeded expectations in every sense. Our clients now say the digital experience mirrors the luxury of our pieces."
      },
      {
        "url": "assets/images/MainPhoto_cropped.jpg",
        "package": "The Legacy Edition",
        "price": "10,000",
        "brand": "Voss Private Estates",
        "name": "Daniel Voss",
        "review":
            "From the moment we connected, Shalom understood the essence of luxury. His eye for clean design and mobile responsiveness helped us attract high-net-worth clients with ease, and I’d gladly do it again. It felt like working with a digital architect, not just a developer."
      },
      {
        "url": "assets/images/women-AI-Profile-Picture.jpg",
        "package": "The Elite Experience",
        "price": "2,500",
        "brand": "VELVET84",
        "name": "Isabella Martens",
        "review":
            "I’ve worked with many creatives, but Shalom’s process was refreshingly elevated. I felt the quality, care, and couture-level attention that defines true luxury. Our launch was seamless, and our visuals now feel like an extension of the runway."
      },
    ];
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
                                  text: "TESTIMONIALS",
                                  letterSpacing: 4,
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
                              text: "What Visionaries Say About Shalom",
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: "AscendantSerif",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TText(
                              text:
                                  "Trusted by elite clients across fashion, tech, luxury, and lifestyle, here’s how I helped shape their digital legacy.",
                              fontWeight: FontWeight.w100,
                              fontSize: 14,
                              fontFamily: "AscendantSerif",
                            ),
                            SizedBox(
                              height: 80,
                            ),
                            MasonryGridView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              mainAxisSpacing: 20,
                              crossAxisSpacing: 20,
                              itemCount: 4,
                              gridDelegate:
                                  SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2),
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  padding: EdgeInsets.all(
                                    15,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            details[index]["url"],
                                            fit: BoxFit.cover,
                                            height: 100,
                                            width: 100,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                TText(
                                                  text: details[index]["name"],
                                                  letterSpacing: 2,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  fontFamily: "Betty",
                                                ),
                                                TText(
                                                  text: details[index]["brand"],
                                                  letterSpacing: 2,
                                                  fontStyle: FontStyle.italic,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 8,
                                                  fontFamily: "AscendantSerif",
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                TText(
                                                  text: details[index]
                                                      ["review"],
                                                  fontSize: 10,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: List.generate(
                                              5,
                                              (_) => Icon(
                                                Icons.star_rate,
                                                color: Colors.orange,
                                                size: 20,
                                              ),
                                            ),
                                          ),
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: details[index]
                                                      ["package"],
                                                  style: TextStyle(
                                                    fontStyle: FontStyle.italic,
                                                    fontFamily:
                                                        "AscendantSerif",
                                                    fontWeight: FontWeight.w100,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: " - ",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w100,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: "£",
                                                  style: TextStyle(
                                                    fontStyle: FontStyle.italic,
                                                    fontWeight: FontWeight.w100,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: details[index]["price"],
                                                  style: TextStyle(
                                                    fontStyle: FontStyle.italic,
                                                    fontFamily:
                                                        "AscendantSerif",
                                                    fontWeight: FontWeight.w100,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              height: 70,
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
