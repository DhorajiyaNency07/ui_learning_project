import 'package:flutter/material.dart';
import 'package:ui_learning_project/core/common_widgets/common_app_button.dart';

class ShowModalBottomSheetScreen extends StatefulWidget {
  const ShowModalBottomSheetScreen({Key? key}) : super(key: key);

  @override
  State<ShowModalBottomSheetScreen> createState() =>
      _ShowModalBottomSheetScreenState();
}

class _ShowModalBottomSheetScreenState
    extends State<ShowModalBottomSheetScreen> {
  // bool isClickColor = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: ElevatedButton(
          child: const Text("Modal Bottom Sheet"),
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: Colors.transparent,
              barrierColor: const Color.fromRGBO(35, 79, 104, 67),
              context: context,
              builder: (context) {
                return Container(
                  height: height / 1.79,
                  width: width / 1,
                  padding:
                  EdgeInsets.only(left: height / 35, right: height / 35),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.elliptical(67, 70),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: height / 50),
                            height: height / 200,
                            width: width / 5.5,
                            decoration: const BoxDecoration(
                              color: Color(0xff53587A),
                              borderRadius: BorderRadius.all(
                                Radius.circular(2),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height / 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Select Location",
                            style: TextStyle(
                              fontSize: 19,
                              color: Color(0xff252B5C),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xff234F68),
                                  borderRadius: BorderRadius.circular(20)),
                              padding: EdgeInsets.only(
                                  left: width / 16,
                                  right: width / 16,
                                  top: height / 55,
                                  bottom: height / 55),
                              child: const Text(
                                "Edit",
                                style:
                                TextStyle(color: Colors.white, fontSize: 9),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            style:
                            // ButtonStyle(
                            ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff234F68),
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 58,
                                  width: 58,
                                  margin: const EdgeInsets.only(
                                    bottom: 15,
                                    top: 15,
                                  ),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/icon_images/Location_White.png"),
                                    ),
                                  ),
                                  child: Image.asset(
                                      "assets/icon_images/Shape_transperant.png",
                                      fit: BoxFit.cover),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(
                                            bottom: 15,
                                            top: 15,
                                            left: 15,
                                            right: 20,
                                          ),
                                          height: 70,
                                          child: const Text(
                                            "Srengseng, Kembangan, West Jakarta \nCity, Jakarta 11630",
                                            softWrap: true,
                                            style: TextStyle(
                                              height: 1.7,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 70),
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          OutlinedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  margin: const EdgeInsets.only(
                                    bottom: 15,
                                    top: 15,
                                  ),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffECEDF3),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/icon_images/icon_location.png"),
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(
                                            bottom: 20,
                                            top: 20,
                                            left: 15,
                                            right: 15,
                                          ),
                                          margin: const EdgeInsets.all(5),
                                          height: 70,
                                          child: const Text(
                                            "Petompon, Kec. Gajahmungkur, Kota \nSemarang, Jawa Tengah 50232",
                                            softWrap: true,
                                            style: TextStyle(
                                              height: 1.4,
                                              fontWeight: FontWeight.w400,
                                              // color: Color(0xff53587A),
                                              color: Color.fromRGBO(
                                                  83, 88, 122, 70),
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CommonButton(
                            text: "Choose Location",
                            height: height / 15,
                            width: width / 1.5,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}