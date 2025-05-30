import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../utils/helper/color.dart';
import '../../../desktop/screens/home/home.dart';

class TMobilePortfolio extends StatelessWidget {
  const TMobilePortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    RxList<bool> tapped = List.generate(12, (_) => false).obs;
    List<Map> tGridview = [
      {
        "url": "assets/images/1efaaf8832ac02dab09cf6aeb5bf3645.jpg",
        'title': "The Signature Build for Maison Aurelle",
        "text":
            "A warm, stately platform showcasing generational craftsmanship through visual storytelling and tactile textures.",
      },
      {
        "url": "assets/images/5ad922a09dff39a7be8b7952c54565c8.jpg",
        'title': "The Olfactory Gallery for Maison Verre",
        "text":
            "A poetic digital experience where scent meets story—fluid visuals, timeless design, and emotion-led navigation."
      },
      {
        "url": "assets/images/6a6ffbaf86a24528b9d9901ad8b8dddc.jpg",
        'title': "The Drive of Distinction for Étoile Motors",
        "text":
            "A high-impact digital showroom for their bespoke performance fleet—sleek, powerful, and born to impress."
      },
      {
        "url": "assets/images/66e75ce2985518253e4a08ea64d1c88a.jpg",
        'title': "The Scented Vault for Vantier Parfums",
        "text":
            "Designed like a private boutique, the interface blends mystique, elegance, and artistic product presentation."
      },
      {
        "url": "assets/images/112ef80fe28534ea04b8ce7b3ce8eee6.jpg",
        'title': "The Escape Edition for Solène Voyages",
        "text":
            "A dreamlike digital journey that evokes rare destinations, private getaways, and curated travel experiences with unmatched elegance."
      },
      {
        "url": "assets/images/276c9976248497f8a6bef03509e6ba6b.jpg",
        'title': "The Sonic Statement for Élan Acoustics",
        "text":
            "An immersive site that lets visitors experience sound visually—refined, bold, and meticulously crafted."
      },
      {
        "url": "assets/images/b42e3d36e33f3693af2a71295c984265.jpg",
        'title': "The Timeless Engine for Velour Horology",
        "text":
            "A handcrafted digital presence designed to echo the precision, craftsmanship, and heritage of fine Swiss watchmaking."
      },
      {
        "url": "assets/images/b42e6c8e71a83db77db65d3ee0fa0c5e.jpg",
        'title': "The Private Collection for Valtor Estates",
        "text":
            "A custom mobile and web experience for showcasing multi-million pound properties with immersive galleries, cinematic video backgrounds, and concierge booking integration."
      },
      {
        "url": "assets/images/b852f723c31a7be7865afe001baa7acb.jpg",
        'title': "The Digital Atelier for Liora Fine Jewellery",
        "text":
            "An interactive, fully custom shopping experience blending artful motion, 3D product previews, and a timeless color palette to mirror the craftsmanship of each piece."
      },
      {
        "url": "assets/images/b26029e76316078352e9fe919c17994d.jpg",
        'title': "The Curated Ceremony for Amara Événements",
        "text":
            "An ethereal, experience-led design reflecting the grace, grandeur, and detail of bespoke weddings around the world."
      },
      {
        "url": "assets/images/e117277b8223fb00dd3d47cbff0efd20.jpg",
        'title': "The Digital Atelier for Liora Fine Jewellery",
        "text":
            "A timeless online showcase blending sophistication with interactive design, mirroring the brand’s artisanal luxury."
      },
      {
        "url": "assets/images/fc1b0f48d46fb17c34d06f98050dc5ba.jpg",
        'title': "The Runway Room for Femmé Atelier",
        "text":
            "A soft, cinematic interface crafted to feel like a personal stylist—tailored, editorial, and endlessly chic."
      },
    ];
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
                          text: "THE ATELIER",
                          letterSpacing: 6,
                          fontSize: 35,
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
                        return Obx(
                          () => Column(
                            children: [
                              Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      tapped[index] = !tapped[index];
                                    },
                                    child: Image.asset(
                                      tGridview[index]["url"],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                      right: 5,
                                      bottom: 5,
                                      child: Icon(
                                        tapped[index]
                                            ? Icons.expand_less_rounded
                                            : Icons.expand_more_rounded,
                                        color: TColors.white,
                                      ))
                                ],
                              ),
                              if (tapped[index])
                                Column(
                                  children: [
                                    TText(
                                      text: tGridview[index]["title"],
                                      fontFamily: "AscendantSerif",
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    TText(
                                      text: tGridview[index]["text"],
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
    );
  }
}
