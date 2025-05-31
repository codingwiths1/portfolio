import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../utils/helper/color.dart';
import '../../../desktop/screens/about/t_about.dart';
import '../../../desktop/screens/home/home.dart';

class TTabletAbout extends StatelessWidget {
  const TTabletAbout({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> tGridDetails = [
      {
        "widget": Obx(
          () => Column(
            children: [
              InkWell(
                onTap: () {
                  TAbout.expand[0] = !TAbout.expand[0];
                  if (TAbout.expand[0]) {
                    TAbout.expand[1] = false;
                    TAbout.expand[2] = false;
                    TAbout.expand[3] = false;
                  }
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network( errorBuilder:
                        (context, error, stackTrace) =>
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Center(
                            child: Icon(
                              Icons.error_outline_rounded,
                              color: TColors.white,
                            ),
                          ),
                        ),
                      'https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632798/og0gvfilqdxbeg2nvvzh.png',
                      height: 50,
                      width: 50,
                      color: Colors.white,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress != null) {
                          return child;
                        } else {
                          return SizedBox(
                            height: 50,
                            width: 50,
                            child: Center(
                              child: SpinKitChasingDots(
                                size: 30,
                                color: TColors.white,
                              ),
                            ),
                          );
                        }
                      },
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TText(
                        text: "Bespoke Mobile Development",
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      TAbout.expand[0]
                          ? Icons.arrow_drop_up
                          : Icons.arrow_drop_down,
                      color: TColors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              if (TAbout.expand[0])
                TText(
                  text:
                      "I craft high-performance mobile apps tailored to reflect the unique identity and aspirations of your brand. Seamless functionality meets sophisticated design—built exclusively for those who value quality without compromise.",
                  fontSize: 10,
                ),
            ],
          ),
        ),
      },
      {
        "widget": Obx(
          () => Column(
            children: [
              InkWell(
                onTap: () {
                  TAbout.expand[1] = !TAbout.expand[1];
                  if (TAbout.expand[1]) {
                    TAbout.expand[0] = false;
                    TAbout.expand[2] = false;
                    TAbout.expand[3] = false;
                  }
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network( errorBuilder:
                        (context, error, stackTrace) =>
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Center(
                            child: Icon(
                              Icons.error_outline_rounded,
                              color: TColors.white,
                            ),
                          ),
                        ),
                      'https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632803/yvcwt3yxbt4aeli2lrs5.png',
                      height: 50,
                      width: 50,
                      color: Colors.white,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress != null) {
                          return child;
                        } else {
                          return SizedBox(
                            height: 50,
                            width: 50,
                            child: Center(
                              child: SpinKitChasingDots(
                                size: 30,
                                color: TColors.white,
                              ),
                            ),
                          );
                        }
                      },
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TText(
                        text: "Elegant Web Experiences",
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      TAbout.expand[1]
                          ? Icons.arrow_drop_up
                          : Icons.arrow_drop_down,
                      color: TColors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              if (TAbout.expand[1])
                TText(
                  text:
                      "From minimalist landing pages to immersive digital platforms, I design and develop websites that not only look exceptional but perform flawlessly. Each line of code is precision-engineered to captivate and convert.",
                  fontSize: 10,
                ),
            ],
          ),
        ),
      },
      {
        "widget": Obx(
          () => Column(
            children: [
              InkWell(
                onTap: () {
                  TAbout.expand[2] = !TAbout.expand[2];
                  if (TAbout.expand[2]) {
                    TAbout.expand[0] = false;
                    TAbout.expand[1] = false;
                    TAbout.expand[3] = false;
                  }
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network( errorBuilder:
                        (context, error, stackTrace) =>
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Center(
                            child: Icon(
                              Icons.error_outline_rounded,
                              color: TColors.white,
                            ),
                          ),
                        ),
                      'https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632812/wwm259ktee7g3kxvm1td.png',
                      height: 50,
                      width: 50,
                      color: Colors.white,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress != null) {
                          return child;
                        } else {
                          return SizedBox(
                            height: 50,
                            width: 50,
                            child: Center(
                              child: SpinKitChasingDots(
                                size: 30,
                                color: TColors.white,
                              ),
                            ),
                          );
                        }
                      },
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TText(
                        text: "End-to-End Digital Craftsmanship",
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      TAbout.expand[2]
                          ? Icons.arrow_drop_up
                          : Icons.arrow_drop_down,
                      color: TColors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              if (TAbout.expand[2])
                TText(
                  text:
                      "From strategy to launch, I offer a seamless journey—blending design, development, and innovation into one cohesive experience. My work is never templated, always tailored, and designed to stand the test of time.",
                  fontSize: 10,
                ),
            ],
          ),
        ),
      },
      {
        "widget": Obx(
          () => Column(
            children: [
              InkWell(
                onTap: () {
                  TAbout.expand[3] = !TAbout.expand[3];
                  if (TAbout.expand[3]) {
                    TAbout.expand[0] = false;
                    TAbout.expand[1] = false;
                    TAbout.expand[2] = false;
                  }
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network( errorBuilder:
                        (context, error, stackTrace) =>
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Center(
                            child: Icon(
                              Icons.error_outline_rounded,
                              color: TColors.white,
                            ),
                          ),
                        ),
                      'https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632807/kecaudethuhddbklhigo.png',
                      height: 50,
                      width: 50,
                      color: Colors.white,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress != null) {
                          return child;
                        } else {
                          return SizedBox(
                            height: 50,
                            width: 50,
                            child: Center(
                              child: SpinKitChasingDots(
                                size: 30,
                                color: TColors.white,
                              ),
                            ),
                          );
                        }
                      },
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TText(
                        text: "White-Glove Support & Collaboration",
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      TAbout.expand[3]
                          ? Icons.arrow_drop_up
                          : Icons.arrow_drop_down,
                      color: TColors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              if (TAbout.expand[3])
                TText(
                  text:
                      "Every project includes a level of personal attention reserved for luxury service. From the first consultation to post-launch refinement, I work closely with you—ensuring your vision is realized with clarity, confidence, and class.",
                  fontSize: 10,
                ),
            ],
          ),
        ),
      },
    ];
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(
          20,
        ),
        child: Stack(
          children: [
            Drawer(
              width: double.maxFinite,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
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
                            text: "MEET THE CREATOR",
                            fontFamily: "Picasso",
                            letterSpacing: 4,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: TColors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "I",
                              style: TextStyle(
                                fontFamily: "AscendantSerif",
                                fontSize: 25,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                            TextSpan(
                              text: "'",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 25,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                            TextSpan(
                              text: "m",
                              style: TextStyle(
                                fontFamily: "AscendantSerif",
                                fontSize: 25,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                            TextSpan(
                              text: "  Shalom Ubi",
                              style: TextStyle(
                                fontFamily: "AscendantSerif",
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                            TextSpan(
                              text: "  Mobile",
                              style: TextStyle(
                                fontFamily: "AscendantSerif",
                                fontSize: 25,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                            TextSpan(
                              text: " / ",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 25,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                            TextSpan(
                              text: "Web Developer",
                              style: TextStyle(
                                fontFamily: "AscendantSerif",
                                fontSize: 25,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TText(
                        text:
                            "With a keen eye for detail and a passion for precision, I craft mobile and web experiences that exude sophistication and performance. As a seasoned developer, I partner with discerning clients to bring their boldest digital visions to life—flawlessly engineered, elegantly designed. Each project I touch reflects a commitment to excellence, because I don’t just build websites and apps—I create digital statements.",
                        fontWeight: FontWeight.w100,
                        fontSize: 12,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Image.network(
                              errorBuilder: (context, error, stackTrace) =>
                                  Container(
                                padding: EdgeInsets.all(
                                  50,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 0.3,
                                    color: TColors.white,
                                  ),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.error_outline_rounded,
                                    color: TColors.white,
                                  ),
                                ),
                              ),
                              'https://res.cloudinary.com/dsqc1pitc/image/upload/v1748638671/siyu7indd0smpd6uprik.png',
                              loadingBuilder:
                                  (context, child, loadingProgress) {
                                if (loadingProgress != null) {
                                  return child;
                                } else {
                                  return Container(
                                    padding: EdgeInsets.all(
                                      50,
                                    ),
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
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TText(
                        text: 'WHAT I DO',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      MasonryGridView.builder(
                        mainAxisSpacing: 40,
                        crossAxisSpacing: 20,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        gridDelegate:
                            SliverSimpleGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return tGridDetails[index]["widget"];
                        },
                      ),
                      SizedBox(
                        height: 30,
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
    );
  }
}
