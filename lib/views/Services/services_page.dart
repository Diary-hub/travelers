import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class Services_page extends StatelessWidget {
  const Services_page({super.key});

  @override
  Widget build(BuildContext context) {
    double sH = MediaQuery.of(context).size.height;
    double sW = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        width: sW,
        height: sH,
        child: ListView(
          children: [
            Container(
              color: Colors.white,
              alignment: Alignment.center,
              height: sH,
              width: sW,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network(
                    "https://kaysvillefamilydentistry.com/wp-content/uploads/2022/07/coming_soon.gif",
                  ),
                  Image.network(
                      "https://assets-v2.lottiefiles.com/a/ee61466a-1176-11ee-b52b-a7ae2a1b3732/BiAI1aiC0X.gif")
                ],
              ),
            ),
            SizedBox(
              height: sH * .94,
              width: sW,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: sW * 0.46,
                          height: sH * .285,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child:
                              Image.asset("assets/images/login/restaurant.png"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: sW * 0.46,
                          height: sH * .285,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                              child: Column(
                            children: [
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                "Restaurant ",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 20),
                                child: Text(
                                    "recommend the nearest restaurant based on your cost"),
                              ),
                              Text("")
                            ],
                          )),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: sW * 0.46,
                          height: sH * .285,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                              child: Column(
                            children: [
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                "GPS",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 40, top: 20),
                                child: Text(
                                    "the palaces that are important to travelers to see"),
                              )
                            ],
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: sW * 0.46,
                          height: sH * .285,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Image.asset("assets/images/login/gps.png"),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.center,
                          width: sW * 0.46,
                          height: sH * .285,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Image.asset(
                            "assets/images/login/hikerbag.png",
                            height: 170,
                            width: 170,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          width: sW * 0.46,
                          height: sH * .287,
                          child: const Center(
                              child: Column(
                            children: [
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                "Hikers",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 20.0),
                                child: Text(
                                    "best guiders in the city will be in service"),
                              )
                            ],
                          )),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}