// ignore_for_file: file_names

import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';

class StatueTile extends StatelessWidget {
  const StatueTile({
    super.key,
    required this.sW,
    required this.sH,
    required this.imgUrl,
    required this.textTitle,
  });

  final double sW;
  final double sH;
  final String textTitle;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  fit: BoxFit.fill, image: NetworkImage(imgUrl))),
          width: sW * 0.31,
          height: sH * 0.17,
        ),
        SizedBox(width: sW * 0.06),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: sW * 0.50,
              child: Text(
                overflow: TextOverflow.ellipsis,
                textTitle,
                style: const TextStyle(
                    fontFamily: "Oxygen",
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.do_not_disturb_on_total_silence_rounded,
                  color: Colors.amber,
                  size: 10,
                ),
                SizedBox(
                  width: sW * 0.40,
                  child: const Text(
                    overflow: TextOverflow.ellipsis,
                    "Bardarkari Azadi",
                    style: TextStyle(
                        fontFamily: "Oxygen",
                        fontSize: 14,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            SizedBox(height: sH * 0.01),
            SizedBox(
              width: sW * 0.50,
              child: const Text(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                "A Nice paikar thats about me and you who canoot be mn and you",
                style: TextStyle(
                    fontFamily: "Oxygen",
                    fontSize: 13,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
            AnimatedRatingStars(
              initialRating: 3.5,
              minRating: 0.0,
              maxRating: 5.0,
              filledColor: Colors.amber,
              emptyColor: Colors.grey,
              filledIcon: Icons.star,
              halfFilledIcon: Icons.star_half,
              emptyIcon: Icons.star_border,
              onChanged: (double rating) {
                // Handle the rating change here
              },
              displayRatingValue: true,
              interactiveTooltips: true,
              customFilledIcon: Icons.star,
              customHalfFilledIcon: Icons.star_half,
              customEmptyIcon: Icons.star_border,
              starSize: 10.0,
              animationDuration: const Duration(milliseconds: 300),
              animationCurve: Curves.easeInOut,
              readOnly: true,
            )
          ],
        )
      ],
    );
  }
}
