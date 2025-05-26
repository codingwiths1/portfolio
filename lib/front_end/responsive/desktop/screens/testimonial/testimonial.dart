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
                              text: "What Visionaries Say About Benjamin",
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
                                  color: Colors.blue,
                                  height: 220,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        color: Colors.purple,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Flexible(
                                              child: Container(
                                                height: 150,
                                                width: 150,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                color: Colors.red,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    TText(
                                                      text: "Clara DuBois",
                                                      letterSpacing: 2,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16,
                                                      fontFamily:
                                                          "AscendantSerif",
                                                    ),
                                                    Text.rich(
                                                      TextSpan(
                                                        children: [
                                                          TextSpan(
                                                              style: TextStyle(
                                                                fontSize: 10,
                                                                fontFamily:
                                                                    "AscendantSerif",
                                                                overflow:
                                                                    TextOverflow
                                                                        .clip,
                                                              ),
                                                              text:
                                                                  "Shalom didn’t just build us a website — he built an experience. Every scroll, every transition, every pixel reflects the elegance of our brand. The Signature Build exceeded expectations in every sense. Our clients now say the digital experience mirrors the luxury of our pieces."),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
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
