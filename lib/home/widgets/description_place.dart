import 'package:flutter/material.dart';
import 'package:trips_app/home/widgets/button_purple.dart';

class DescriptonPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;
  String descriptionSecondaryPlace;

  DescriptonPlace(this.namePlace, this.stars, this.descriptionPlace,
      this.descriptionSecondaryPlace,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final startHalf = Container(
      margin: const EdgeInsets.only(top: 323, right: 3),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final starBorder = Container(
      margin: const EdgeInsets.only(top: 323, right: 3),
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: const EdgeInsets.only(top: 323, right: 3),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final description = Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
          color: Colors.black54,
          fontSize: 16,
          fontWeight: FontWeight.bold,
          fontFamily: "Lato",
        ),
      ),
    );

    final descriptionSecondary = Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Text(
        descriptionSecondaryPlace,
        style: const TextStyle(
          color: Colors.black54,
          fontSize: 16,
          fontWeight: FontWeight.bold,
          fontFamily: "Lato",
        ),
      ),
    );

    final titleStars = Row(children: [
      Container(
        margin: const EdgeInsets.only(top: 320, left: 20, right: 20),
        child: Text(
          namePlace,
          style: const TextStyle(
              fontSize: 30, fontWeight: FontWeight.w900, fontFamily: "Lato"),
          textAlign: TextAlign.left,
        ),
      ),
      Row(
        children: [
          star,
          star,
          star,
          startHalf,
          starBorder,
        ],
      ),
      // Column(
      //   children: [description, description],
      // )
    ]);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleStars,
        description,
        descriptionSecondary,
        ButtonPurple(),
      ],
    );
  }
}
