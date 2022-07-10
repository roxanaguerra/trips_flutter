import 'package:flutter/material.dart';

class UbicationImage extends StatelessWidget {
  const UbicationImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
      height: screenHeight * 0.65,
      decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage("assets/img/mapa.png")),
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        color: Colors.transparent,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 10.0,
            offset: Offset(0.0, 5.0),
          ),
        ],
      ),
    );
  }
}
