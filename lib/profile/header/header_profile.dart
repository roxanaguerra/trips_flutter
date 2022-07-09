import 'package:flutter/material.dart';
import 'package:trips_app/profile/header/buttons_option.dart';
import 'package:trips_app/profile/header/user_info.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
      child: Column(
        children: <Widget>[
          Row(
            children: const <Widget>[
              Text(
                'Profile',
                style: TextStyle(
                    fontFamily: 'Lato',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0),
              ),
            ],
          ),
          UserInfo(
              imgProfile: "assets/img/viajero.jpg",
              name: "Roxana Guerra",
              email: "sguerraapaza@gmail.com"),
          const ButtonsOption(),
        ],
      ),
    );
  }
}
