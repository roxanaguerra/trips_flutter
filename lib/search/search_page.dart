import 'package:flutter/material.dart';
import 'package:trips_app/profile/header/background_profile.dart';
import 'package:trips_app/search/header/header_search.dart';
import 'package:trips_app/search/header/ubication_image.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundProfile(),
        ListView(
          children: [
            HeaderSearch(),
            SizedBox(
              height: 15,
            ),
            UbicationImage(),
          ],
        )
      ],
    );
  }
}
