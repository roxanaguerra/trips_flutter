import 'package:flutter/material.dart';
import 'package:trips_app/home/card_image_list.dart';
import 'package:trips_app/home/widgets/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBack("Popular"),
        CardImageList(),
      ],
    );
  }
}
