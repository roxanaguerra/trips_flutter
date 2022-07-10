import 'package:flutter/material.dart';

class CircleButton extends StatefulWidget {
  bool mini;
  IconData iconButton;
  double iconSize;
  Color color;

  CircleButton(
      {Key? key,
      required this.mini,
      required this.iconButton,
      required this.iconSize,
      required this.color})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CircleButton(
        mini: mini, iconButton: iconButton, iconSize: iconSize, color: color);
  }
}

class _CircleButton extends State<CircleButton> {
  bool mini;
  IconData iconButton;
  double iconSize;
  Color color;

  _CircleButton(
      {required this.mini,
      required this.iconButton,
      required this.iconSize,
      required this.color});

  void onPressedButton() {}

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      height: iconSize * 2.5,
      child: FloatingActionButton(
        backgroundColor: color,
        mini: mini,
        onPressed: onPressedButton,
        child: Icon(
          iconButton,
          size: iconSize,
          color: const Color(0xFF4268D3),
        ),
      ),
    ));
  }
}
