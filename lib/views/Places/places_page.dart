import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:reorderable_tabbar/reorderable_tabbar.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:travelers/common/widget/StatueTile.dart';
import 'package:travelers/common/widget/statueListComponent.dart';

// ignore: must_be_immutable
class PlacesPage extends StatelessWidget {
  PlacesPage({super.key});

  List<Tab> tabs = const [
    Tab(
      text: "Random",
    ),
    Tab(
      text: "Historical",
    ),
    Tab(
      text: "Food",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    double sH = MediaQuery.of(context).size.height;
    double sW = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: DefaultTabController(
        length: tabs.length,
        initialIndex: 0,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Explore',
                        style: TextStyle(
                            fontFamily: "Oxygen",
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'The Ancient Ones',
                        style: TextStyle(
                            fontFamily: "Oxygen",
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                ReorderableTabBar(
                  isScrollable: true,
                  indicatorWeight: 5,
                  tabBorderRadius: const BorderRadius.vertical(
                    top: Radius.circular(8),
                  ),
                  reorderingTabBackgroundColor: Colors.black45,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: DotIndicator(
                    color: Colors.black,
                  ),
                  tabs: tabs,
                ),
                SizedBox(height: sH * 0.03),
                SizedBox(
                  width: double.infinity,
                  height: sH * 0.26,
                  child: TabBarView(children: [
                    CarouselSlider(
                      items: [
                        StatueListComponent(
                            imgUrl:
                                "https://pukmediaimages.blob.core.windows.net/root/G/1023112021_zx.jpg",
                            locationText: "Sofi Karem"),
                        StatueListComponent(
                            imgUrl:
                                "https://previews.123rf.com/images/elec/elec1502/elec150200697/36936355-statue-of-ibrahim-pasha-in-cairo-egypt.jpg",
                            locationText: "Saray Azadi")
                      ],
                      options: CarouselOptions(
                          aspectRatio: 16 / 10,
                          // padEnds: false,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          viewportFraction: 0.7),
                    ),
                    CarouselSlider(
                      items: [
                        StatueListComponent(
                            imgUrl:
                                "https://pbs.twimg.com/media/EmxO2y8XMAI03No.jpg:large",
                            locationText: "Bardarkai Sara"),
                        StatueListComponent(
                            imgUrl:
                                "https://thetheatretimes.com/wp-content/uploads/2017/01/images-cms-image-000024794-620x300.jpg",
                            locationText: "Hawari Rome")
                      ],
                      options: CarouselOptions(
                          aspectRatio: 16 / 10,
                          // padEnds: false,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          viewportFraction: 0.7),
                    ),
                    CarouselSlider(
                      items: [
                        StatueListComponent(
                            imgUrl:
                                "https://kurdistantv.net/content/upload/1/archive/2019-11/76887336_434533123877184_862667133706829824_n_w900_h900.jpg",
                            locationText: "ٍShaab tea"),
                        StatueListComponent(
                            imgUrl:
                                "https://previews.123rf.com/images/elec/elec1502/elec150200697/36936355-statue-of-ibrahim-pasha-in-cairo-egypt.jpg",
                            locationText: "Azadi Mall")
                      ],
                      options: CarouselOptions(
                          aspectRatio: 16 / 10,
                          // padEnds: false,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          viewportFraction: 0.7),
                    ),
                  ]),
                ),
                SizedBox(height: sH * 0.02),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                width: sW,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Ancient Places',
                      style: TextStyle(
                          fontFamily: "Oxygen",
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'View all >',
                      style: TextStyle(
                          fontFamily: "Oxygen",
                          fontSize: 12,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                height: sH * 0.8,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 00.0, vertical: 30.0),
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      StatueTile(
                          imgUrl:
                              "https://thetheatretimes.com/wp-content/uploads/2017/01/images-cms-image-000024794-620x300.jpg",
                          textTitle: "Hawari Shar Rome Park",
                          sW: sW,
                          sH: sH),
                      SizedBox(height: sH * 0.02),
                      StatueTile(
                          imgUrl:
                              "https://thetheatretimes.com/wp-content/uploads/2017/01/images-cms-image-000024794-620x300.jpg",
                          textTitle: "Hawari Shar Rome Park",
                          sW: sW,
                          sH: sH),
                      SizedBox(height: sH * 0.02),
                      StatueTile(
                          imgUrl:
                              "https://thetheatretimes.com/wp-content/uploads/2017/01/images-cms-image-000024794-620x300.jpg",
                          textTitle: "Hawari Shar Rome Park",
                          sW: sW,
                          sH: sH),
                      SizedBox(height: sH * 0.02),
                      StatueTile(
                          imgUrl:
                              "https://thetheatretimes.com/wp-content/uploads/2017/01/images-cms-image-000024794-620x300.jpg",
                          textTitle: "Hawari Shar Rome Park",
                          sW: sW,
                          sH: sH),
                      SizedBox(height: sH * 0.02),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
