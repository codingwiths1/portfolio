import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
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
            "https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632498/fyorb6dytjwsix8q75rd.webp",
        "package": "The Elite Experience",
        "price": "2,500",
        "brand": "NOIR Audio",
        "name": "Amélie Rousseau",
        "review":
            "Shalom has a rare ability to blend technology and sophistication. Our site feels powerful, cinematic, and beautifully silent — just like our speakers.He gave us exactly the tone and polish we needed to impress high-end distributors and audiophiles alike."
      },
      {
        "url":
            "https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632507/xva3cmimnxxwllh2jzw4.webp",
        "package": "The Signature Build",
        "price": "5,000",
        "brand": "Liora Fine Jewellery",
        "name": "Clara DuBois",
        "review":
            "Shalom didn’t just build us a website — he built an experience. Every scroll, every transition, every pixel reflects the elegance of our brand. It exceeded expectations in every sense. Our clients now say the digital experience mirrors the luxury of our pieces."
      },
      {
        "url":
            "https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632507/crfcuezqt4urnsall9ga.jpg",
        "package": "The Legacy Edition",
        "price": "10,000",
        "brand": "Voss Private Estates",
        "name": "Daniel Voss",
        "review":
            "From the moment we connected, Shalom understood the essence of luxury. His eye for clean design and mobile responsiveness helped us attract high-net-worth clients with ease, and I’d gladly do it again. It felt like working with a digital architect, not just a developer."
      },
      {
        "url":
            "https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632508/fvu7gnklsa3nghsggvrc.jpg",
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
              child: TLeftNavText(),
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
                                  text: "WORDS FROM THE PRIVILEGED",
                                  letterSpacing: 4,
                                  fontFamily: "Picasso",
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
                              letterSpacing: 2,
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
                                          Image.network(
                                            height: 100,
                                            width: 100,
                                            errorBuilder:
                                                (context, error, stackTrace) =>
                                                    Container(
                                              height: 100,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  width: 0.3,
                                                  color: TColors.white,
                                                ),
                                              ),
                                              child: Center(
                                                child: Icon(
                                                  Icons.error_outline_rounded,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            loadingBuilder: (context, child,
                                                loadingProgress) {
                                              if (loadingProgress != null) {
                                                return child;
                                              } else {
                                                return Container(
                                                  height: 100,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      width: 0.3,
                                                      color: TColors.white,
                                                    ),
                                                  ),
                                                  child: Center(
                                                    child: SpinKitChasingDots(
                                                      color: TColors.white,
                                                    ),
                                                  ),
                                                );
                                              }
                                            },
                                            details[index]["url"],
                                            fit: BoxFit.cover,
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
