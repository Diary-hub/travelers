import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List images = [
    "assets/images/login/img1.jpg",
    "assets/images/login/img2.jpg",
    "assets/images/login/img3.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(images[index]),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(children: [
                  Column(children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 115),
                      child: Text(
                        'Data',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontFamily: "Oxygen-bold",
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 115),
                      child: Text(
                        'Data',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.red,
                          fontFamily: "Oxygen-Light",
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 180,
                      child: Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since th',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontFamily: "Oxygen-Light",
                        ),
                      ),
                    ),
                    ElevatedButton(onPressed: () {}, child: const Text('data'))
                  ]),
                ]),
              ),
            );
          }),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Home'),
      ]),
    );
  }
}
