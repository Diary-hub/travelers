import 'package:flutter/material.dart';
import 'package:travelers/common/widget/locAndSub.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double sH = MediaQuery.of(context).size.height;
    double sW = MediaQuery.of(context).size.width;
    return ListView(children: [
      const SizedBox(
        height: 40,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            'Explore',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
          ),
          Container(
            width: sW * 0.2,
            height: sH * 0.1,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black54,
                  width: 3,
                ),
                image: const DecorationImage(
                    image: AssetImage("assets/images/login/img1.jpg"),
                    fit: BoxFit.cover),
                color: Colors.amber,
                borderRadius: BorderRadius.circular(100)),
          ),
        ],
      ),
      SizedBox(
        height: sH * 0.06,
      ),
      const Padding(
        padding: EdgeInsets.only(left: 25),
        child: Text(
          'Recommendation',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      SizedBox(
        width: double.maxFinite,
        height: sH * .45,
        child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/images/login/one.jpg"),
                          fit: BoxFit.cover),
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30)),
                  width: 290,
                  height: 100,
                  child: Stack(children: [
                    Positioned(
                        left: 220,
                        top: 10,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100)),
                          child: const Icon(
                            Icons.bookmark,
                            color: Colors.blue,
                          ),
                        )),
                    const Positioned(
                        top: 230,
                        left: 20,
                        child: SizedBox(
                          width: 180,
                          child: Text(
                            'Ramada Hotel&Spa',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w700),
                          ),
                        ))
                  ]),
                ),
              );
            }),
      ),
      const SizedBox(
        height: 40,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          locAndSub(icon: const Icon(Icons.place), text: 'Places'),
          locAndSub(icon: const Icon(Icons.place), text: 'Places'),
          locAndSub(icon: const Icon(Icons.place), text: 'Places'),
        ],
      )
    ]);
  }
}
