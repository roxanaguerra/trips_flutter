import 'package:flutter/material.dart';
import 'package:trips_app/profile/header/background_profile.dart';
import 'package:trips_app/profile/header/header_profile.dart';
import 'package:trips_app/profile/places/places_profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundProfile(),
        ListView(
          children: [
            HeaderProfile(),
            PlacesProfile(),
          ],
        )
      ],
    );
  }
}
