import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  const FloatingActionButtonGreen({Key? key}) : super(key: key);

  @override
  State<FloatingActionButtonGreen> createState() =>
      _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {
  bool _onPressed = false;

  void onPressedFav() {
    setState(() {
      _onPressed = !_onPressed;
    });

    final contextScaffold = Scaffold.of(context);

    // contextScaffold.removeCurrentSnackBar();
    contextScaffold.hideCurrentSnackBar();
    contextScaffold.showSnackBar(SnackBar(
        content: Text(_onPressed
            ? "Agregaste a tus favoritos"
            : "Quitaste de favoritos")));
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressedFav,
      backgroundColor: const Color(0xFF11DA53),
      tooltip: "Fav",
      child: Icon(_onPressed ? Icons.favorite : Icons.favorite_border),
    );
  }
}
