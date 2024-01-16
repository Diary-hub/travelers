import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelers/controllers/bottom_controller.dart';
import 'package:travelers/views/Home/home_screen.dart';
import 'package:travelers/views/Places/places_page.dart';
import 'package:travelers/views/QrReader/qrcode_page.dart';
import 'package:travelers/views/Statues/statues_page.dart';
import 'package:travelers/views/Welcome/welcome.dart';

class HomeRedirect extends StatefulWidget {
  const HomeRedirect({super.key});

  @override
  State<HomeRedirect> createState() => _HomeRedirectState();
}

class _HomeRedirectState extends State<HomeRedirect>
    with TickerProviderStateMixin {
  final autoSizeGroup = AutoSizeGroup();

  final controller = Get.put(BottomBarController());

  final iconList = <IconData>[
    Icons.house_outlined,
    Icons.stadium_outlined,
    Icons.solar_power_sharp,
    Icons.design_services_outlined,
  ];
  final labelList = <String>[
    "Home",
    "Places",
    "Statues",
    "Services",
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: controller.getIndex() == 0
            ? const HomeScreenPage()
            : controller.getIndex() == 1
                ? PlacesPage()
                : controller.getIndex() == 2
                    ? StatuesPage()
                    : const WelcomeScreen(),
        floatingActionButton: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: const Icon(
            Icons.view_in_ar_rounded,
            size: 30,
            color: Colors.black,
          ),
          onPressed: () {
            showModalBottomSheet(
                constraints: const BoxConstraints(maxHeight: 120),
                context: context,
                builder: (context) {
                  return Column(children: [
                    ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      onTap: () {},
                      title: const Text("AI Scanner"),
                    ),
                    ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      onTap: () {
                        Navigator.pop(context);

                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const QrCodeReaderPage()));
                      },
                      title: const Text("QR Code Scanner"),
                    ),
                  ]);
                });
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar.builder(
          itemCount: iconList.length,
          tabBuilder: (int index, bool isActive) {
            final color = isActive ? Colors.redAccent : Colors.amber[200];
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  iconList[index],
                  size: 24,
                  color: color,
                ),
                const SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: AutoSizeText(
                    labelList[index],
                    maxLines: 1,
                    style: TextStyle(
                      color: color,
                      fontFamily: "Oxygen",
                    ),
                    group: autoSizeGroup,
                  ),
                )
              ],
            );
          },
          backgroundColor: const Color.fromARGB(255, 32, 53, 54),
          activeIndex: controller.getIndex(),
          splashRadius: 0,
          notchSmoothness: NotchSmoothness.defaultEdge,
          gapLocation: GapLocation.center,
          onTap: (index) => controller.setIndex(index),
          shadow: const BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 12,
            spreadRadius: 0.5,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
