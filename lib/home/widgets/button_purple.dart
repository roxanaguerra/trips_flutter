import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {
  String buttonText = "Navigate";

  ButtonPurple({Key? key, this.buttonText = "Navegar"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() => {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("Navegando...")))
          }),
      child: Container(
        margin: const EdgeInsets.only(top: 30.0, left: 20, right: 20),
        height: 50,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
              colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp),
        ),
        child: Center(
            child: Text(
          buttonText,
          style: const TextStyle(
              fontFamily: "Lato", fontSize: 18, color: Colors.white),
        )),
      ),
    );
  }
}
