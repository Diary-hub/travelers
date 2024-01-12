import 'package:flutter/material.dart';
import 'package:travelers/views/home/home.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<WelcomeScreen> {
  List images = [
    "assets/images/login/img1.jpg",
    "assets/images/login/img2.jpg",
    "assets/images/login/img3.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    double sH = MediaQuery.of(context).size.height;
    double sW = MediaQuery.of(context).size.width;
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
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                        SizedBox(
                          width: sW * .45,
                          child: const Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry industrys standard dummy text ever since th',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontFamily: "Oxygen-Light",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 100, top: 10),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomePage()));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue),
                            child: const Text(
                              'data',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ]),
                      Column(
                        children: List.generate(3, (indexDots) {
                          return Container(
                            margin: const EdgeInsets.only(bottom: 2),
                            width: 8,
                            height: index == indexDots ? 25 : 8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: index == indexDots
                                    ? Colors.amber
                                    : Colors.amber[100]),
                          );
                        }),
                      )
                    ]),
              ),
            );
          }),
    );
  }
}
