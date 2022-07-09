import 'package:flutter/material.dart';
import 'package:trips_app/profile/header/circle_button.dart';

class ButtonsOption extends StatelessWidget {
  const ButtonsOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
      child: Row(
        children: <Widget>[
          CircleButton(
            mini: true,
            iconButton: Icons.turned_in_not,
            iconSize: 20,
            color: const Color.fromRGBO(255, 255, 255, 1),
          ),
          CircleButton(
            mini: true,
            iconButton: Icons.card_travel,
            iconSize: 20,
            color: const Color.fromRGBO(255, 255, 255, 0.6),
          ),
          CircleButton(
            mini: true,
            iconButton: Icons.add,
            iconSize: 35,
            color: const Color.fromRGBO(255, 255, 255, 1),
          ),
          CircleButton(
            mini: true,
            iconButton: Icons.mail_outline,
            iconSize: 20,
            color: const Color.fromRGBO(255, 255, 255, 0.6),
          ),
          CircleButton(
            mini: false,
            iconButton: Icons.person_outline,
            iconSize: 20,
            color: const Color.fromRGBO(255, 255, 255, 0.6),
          ),
        ],
      ),
    );
  }
}
