// ignore_for_file: file_names
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StatueListComponent extends StatelessWidget {
  String locationText;
  String imgUrl;
  StatueListComponent(
      {super.key, required this.imgUrl, required this.locationText});

  @override
  Widget build(BuildContext context) {
    double sH = MediaQuery.of(context).size.height;
    double sW = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(imgUrl),
            ),
          ),
          width: sW * 0.8,
        ),
        Positioned(
          top: sH * 0.21,
          left: sW * 0.03,
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(180, 0, 0, 0),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  const Icon(
                    Icons.location_on_sharp,
                    color: Colors.amber,
                    size: 20,
                  ),
                  AutoSizeText(
                    locationText,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontFamily: "Oxygen",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
