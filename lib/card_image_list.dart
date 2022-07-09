import 'package:flutter/material.dart';
import 'package:trips_app/card_image.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage(pathImage: "assets/img/beach_palm.jpeg"),
          CardImage(pathImage: "assets/img/beach.webp"),
          CardImage(pathImage: "assets/img/mountain_stars.jpeg"),
          CardImage(pathImage: "assets/img/mountain.jpeg"),
          CardImage(pathImage: "assets/img/girl.jpg"),
          CardImage(pathImage: "assets/img/river.webp"),
          CardImage(pathImage: "assets/img/sunset.webp"),
        ],
      ),
    );
  }
}
