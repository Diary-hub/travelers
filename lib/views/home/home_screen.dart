import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:travelers/common/widget/locAndSub.dart';
import 'package:travelers/common/widget/statueListComponent.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double sH = MediaQuery.of(context).size.height;
    double sW = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: sW * .1, top: sH * .01),
            child: SizedBox(
              width: sW * 0.14,
              height: sH * 0.1,
              child: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/login/xomGyan.jpg"),
              ),
            ),
          )
        ],
      ),
      body: ListView(children: [
        SizedBox(height: sH * 0.05),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  width: sW * 0.45,
                  height: sH * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'My Favourite',
                        style: TextStyle(
                            fontFamily: "Oxygen",
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                          width: 70,
                          height: 70,
                          child: Image.asset("assets/images/login/heart.png"))
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  width: sW * 0.45,
                  height: sH * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Try Ur Luck',
                        style: TextStyle(
                            fontFamily: "Oxygen",
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                          width: 70,
                          height: 70,
                          child: Image.asset("assets/images/login/finger.png"))
                    ],
                  ),
                )
              ],
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: sH * 0.01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blueAccent,
                    ),
                    width: sW * 0.45,
                    height: sH * 0.15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Services',
                          style: TextStyle(
                              fontFamily: "Oxygen",
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: sW * .2,
                          child: Image.asset("assets/images/login/rc.png"),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    width: sW * 0.45,
                    height: sH * 0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.amber,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Map',
                          style: TextStyle(
                              fontFamily: "Oxygen",
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: sW * .2,
                          child:
                              Image.asset("assets/images/login/favourite.png"),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(height: sH * 0.02),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Recomendation',
            style: TextStyle(
                fontFamily: "Oxygen",
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(height: sH * 0.02),
        CarouselSlider(
          items: [
            StatueListComponent(
                imgUrl: "https://pbs.twimg.com/media/EmxO2y8XMAI03No.jpg:large",
                locationText: "Bardarkai Sara"),
            StatueListComponent(
                imgUrl:
                    "https://previews.123rf.com/images/elec/elec1502/elec150200697/36936355-statue-of-ibrahim-pasha-in-cairo-egypt.jpg",
                locationText: "Azadi Mall")
          ],
          options: CarouselOptions(
            aspectRatio: 16 / 10,
            autoPlay: true,
            enableInfiniteScroll: true,
          ),
        ),
      ]),
      drawer: const Drawer(),
    );
  }
}
