import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:portfolio/front_end/utils/widgets/constraints.dart';

import '../../../../utils/helper/color.dart';
import '../about/about.dart';
import '../home/home.dart';

class TDesktopPortfolio extends StatelessWidget {
  const TDesktopPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    RxList<bool> isHovering = List.generate(12, (_) => false).obs;
    List<Map> tGridview = [
      {
        "url":
            "https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632493/vyfqpoyvcczh6vinpqd1.jpg",
        'title': "The Signature Build for Maison Aurelle",
        "text":
            "A warm, stately platform showcasing generational craftsmanship through visual storytelling and tactile textures.",
      },
      {
        "url":
            "https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632494/w5hexzzfy9hh0ftijtu0.jpg",
        'title': "The Olfactory Gallery for Maison Verre",
        "text":
            "A poetic digital experience where scent meets story—fluid visuals, timeless design, and emotion-led navigation."
      },
      {
        "url":
            "https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632495/roth8iks8xttw5ejeiiw.jpg",
        'title': "The Drive of Distinction for Étoile Motors",
        "text":
            "A high-impact digital showroom for their bespoke performance fleet—sleek, powerful, and born to impress."
      },
      {
        "url":
            "https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632498/blkmwwrja9fxbrgnmoi2.jpg",
        'title': "The Scented Vault for Vantier Parfums",
        "text":
            "Designed like a private boutique, the interface blends mystique, elegance, and artistic product presentation."
      },
      {
        "url":
            "https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632500/swrwtrovhenssax94brc.jpg",
        'title': "The Escape Edition for Solène Voyages",
        "text":
            "A dreamlike digital journey that evokes rare destinations, private getaways, and curated travel experiences with unmatched elegance."
      },
      {
        "url":
            "https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632498/c9spqbijzl3kkcas13dv.jpg",
        'title': "The Sonic Statement for Élan Acoustics",
        "text":
            "An immersive site that lets visitors experience sound visually—refined, bold, and meticulously crafted."
      },
      {
        "url":
            "https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632502/fqccwzk3curukcj99ljv.jpg",
        'title': "The Timeless Engine for Velour Horology",
        "text":
            "A handcrafted digital presence designed to echo the precision, craftsmanship, and heritage of fine Swiss watchmaking."
      },
      {
        "url":
            "https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632501/eqliikismatwl3bgigyd.jpg",
        'title': "The Private Collection for Valtor Estates",
        "text":
            "A custom mobile and web experience for showcasing multi-million pound properties with immersive galleries, cinematic video backgrounds, and concierge booking integration."
      },
      {
        "url":
            "https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632502/inp1ihlyzvjzgnr9m2rg.jpg",
        'title': "The Digital Atelier for Liora Fine Jewellery",
        "text":
            "An interactive, fully custom shopping experience blending artful motion, 3D product previews, and a timeless color palette to mirror the craftsmanship of each piece."
      },
      {
        "url":
            "https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632508/nvmu8xyrad9ul1hzaa2k.jpg",
        'title': "The Curated Ceremony for Amara Événements",
        "text":
            "An ethereal, experience-led design reflecting the grace, grandeur, and detail of bespoke weddings around the world."
      },
      {
        "url":
            "https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632505/klujoftirlsai038yijm.jpg",
        'title': "The Digital Atelier for Liora Fine Jewellery",
        "text":
            "A timeless online showcase blending sophistication with interactive design, mirroring the brand’s artisanal luxury."
      },
      {
        "url":
            "https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632506/dlpyau4qjsp1imewztwx.jpg",
        'title': "The Runway Room for Femmé Atelier",
        "text":
            "A soft, cinematic interface crafted to feel like a personal stylist—tailored, editorial, and endlessly chic."
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
                                  text: "THE ATELIER",
                                  letterSpacing: 6,
                                  fontSize: 60,
                                  fontFamily: "Picasso",
                                  fontWeight: FontWeight.bold,
                                  color: TColors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: TText(
                                    color: TColors.white,
                                    fontWeight: FontWeight.w100,
                                    fontSize: 16,
                                    letterSpacing: 4,
                                    text:
                                        "A curated selection of refined digital experiences crafted for visionary brands. Each creation is a fusion of innovation, elegance, and timeless digital craftsmanship.",
                                    fontFamily: "Picasso",
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            MasonryGridView.builder(
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                              itemCount: 12,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                              ),
                              itemBuilder: (BuildContext context, int index) {
                                return MouseRegion(
                                  onEnter: (_) {
                                    isHovering[index] = true;
                                  },
                                  onExit: (_) {
                                    isHovering[index] = false;
                                  },
                                  child: Obx(
                                    () => AnimatedScale(
                                      scale: isHovering[index] ? 1.1 : 1,
                                      duration: Duration(
                                        milliseconds: 200,
                                      ),
                                      child: Column(
                                        children: [
                                          Image.network(
                                            errorBuilder:
                                                (context, error, stackTrace) =>
                                                    AspectRatio(
                                              aspectRatio: 1,
                                              child: Container(
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
                                            ),
                                            loadingBuilder: (context, child,
                                                loadingProgress) {
                                              if (loadingProgress != null) {
                                                return child;
                                              } else {
                                                return AspectRatio(
                                                  aspectRatio: 1,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        width: 0.3,
                                                        color: TColors.white,
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: SpinKitChasingDots(
                                                        size: 35,
                                                        color: TColors.white,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                            },
                                            tGridview[index]["url"],
                                            fit: BoxFit.cover,
                                          ),
                                          if (isHovering[index])
                                            Column(
                                              children: [
                                                TText(
                                                  text: tGridview[index]
                                                      ["title"],
                                                  fontFamily: "AscendantSerif",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                TText(
                                                  text: tGridview[index]
                                                      ["text"],
                                                  fontFamily: "AscendantSerif",
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w100,
                                                ),
                                                SizedBox(
                                                  height: 25,
                                                )
                                              ],
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            )
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
