import 'package:flutter/material.dart';
import 'package:trips_app/review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review("assets/img/viajero.jpg", "Roxana Guerra", "1 review - 5 photos",
            "Hay un lugar increíble en Perú"),
        Review("assets/img/bosque.jpg", "Maria Perez", "1 review 6 photos",
            "Hay un lugar increíble en Perú"),
        Review("assets/img/avatar.png", "Sandra Guerra", "2 review 4 photos",
            "Hay un lugar increíble en Perú"),
        Review("assets/img/user.jpg", "Sandra Guerra", "1 review 7 photos",
            "Hay un lugar increíble en Perú"),
      ],
    );
  }
}
