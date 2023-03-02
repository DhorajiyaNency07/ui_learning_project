import 'package:flutter/material.dart';
import 'package:ui_learning_project/core/common_widgets/common_ios_back_button.dart';
import 'package:ui_learning_project/core/common_widgets/common_rich_text.dart';

import '../../core/common_widgets/common_app_button.dart';

class HalloweenSaleScreen extends StatefulWidget {
  const HalloweenSaleScreen({Key? key}) : super(key: key);

  @override
  State<HalloweenSaleScreen> createState() => _HalloweenSaleScreenState();
}

class _HalloweenSaleScreenState extends State<HalloweenSaleScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;

    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: width / 15, right: width / 15),
              // padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: width / 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CommonIosBackButton(),       /////COMMON IOS BACK BUTTON
                      CircleAvatar(
                        maxRadius: 28,
                        foregroundColor: const Color(0xff252B5C),
                        backgroundColor: const Color(0xffF5F4F8),
                        child: Image.asset("assets/icon_images/Share_icon.png"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height / 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: height / 4,
                            width: width / 1.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: const DecorationImage(
                                  image: AssetImage("assets/images/img1.png"),
                                  fit: BoxFit.contain),
                            ),
                            child: Image.asset("assets/images/img1_trans.png",
                                fit: BoxFit.contain),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(43.0),
                            child: RichTextScreen(),   ///  COMMON RICH TEXT
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height / 30,
                  ),
                  Row(
                    children: [
                      RichText(
                        text: const TextSpan(
                          text: "Limited time",
                          style: TextStyle(
                            color: Color(0xff252B5C),
                            fontSize: 25,
                            height: 1.4,
                            letterSpacing: 0.6,
                            wordSpacing: 1.5,
                          ),
                          children: [
                            TextSpan(
                              text: " Halloween \nSale",
                              style: TextStyle(
                                color: Color(0xff234F68),
                                fontWeight: FontWeight.w800,
                                fontSize: 25,
                                height: 1.4,
                              ),
                            ),
                            TextSpan(
                              text: " is coming back!",
                              style: TextStyle(
                                color: Color(0xff252B5C),
                                fontSize: 25,
                                height: 1.4,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height / 90,
                  ),
                  Row(
                    children: [
                      Container(
                        height: height / 60,
                        width: width / 25,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/icon_images/calendar_fill_ic.png",
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        "October 27, 2022",
                        style: TextStyle(fontSize: 8, color: Color(0xff53587A)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height / 50,
                  ),
                  Row(
                    children: [
                      Container(
                        height: height / 10,
                        width: width / 1.16,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/Coupon_img_.png"),fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height / 30,
                  ),
                  Stack(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: height/4,
                            width: width/1.2,
                            child: const SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit,\nsed do eiusmod tempor incididunt ut labore et dolore\nmagna aliqua. Ut enim ad minim veniam, quis nostrud\nexercitation ullamco laboris nisi ut aliquip.\n\nSed ut perspiciatis unde omnis iste natus error sit\nvoluptatem accusantium doloremque laudantium,\ntotam rem aperiam, eaque ipsa quae ab illo inventore\nveritatis et quasi architecto beatae vitae dicta sunt\nexplicabo. Nemo enim ipsam voluptatem quia voluptas\nsit aspernatur aut odit aut fugit, sed quia consequuntur\nmagni dolores",
                                style: TextStyle(
                                  color: Color.fromRGBO(83, 88, 122, 70),
                                  fontSize: 12,
                                  wordSpacing: 3.5,
                                  height: 1.5,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: height / 5.5,
                        width: width / 1,
                        margin: EdgeInsets.only(top: height/10),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(255, 255, 255, 180),
                              Color.fromRGBO(255, 255, 255, 1)
                            ],

                            tileMode: TileMode.clamp,
                            begin: Alignment.topCenter,
                            end: Alignment.center,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: height/6.4,
                          left: width/13,
                        ),
                        child: CommonButton(
                          text: "Explore more",
                          height: height / 15,
                          width: width / 1.5,
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   height: width / 2,
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
