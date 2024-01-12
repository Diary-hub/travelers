import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          width: 100,
          height: 300,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/login/one.jpg"),
                  fit: BoxFit.cover),
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          child: const Padding(
            padding: EdgeInsets.only(top: 20, left: 30),
            child: Text(
              'Discover',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontFamily: "Oxygen-bold",
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Column(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(100)),
                  child: const Icon(
                    Icons.place,
                    size: 35,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('data')
              ],
            )
          ],
        )
      ]),
    );
  }
}
