import 'package:flutter/material.dart';
import 'package:trips_app/models/place_model.dart';
import 'package:trips_app/profile/places/place_info.dart';

class Place extends StatelessWidget {
  String image;
  PlaceModel infoPlace;

  Place(this.image, this.infoPlace);

  @override
  Widget build(BuildContext context) {
    final photoCard = Container(
      margin: const EdgeInsets.only(top: 10.0, bottom: 70.0),
      height: 250.0,
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          color: Colors.transparent,
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 10.0,
                offset: Offset(0.0, 5.0))
          ]),
    );

    return Stack(
      alignment: const Alignment(0.0, 1),
      children: <Widget>[photoCard, PlaceInfo(infoPlace)],
    );
  }
}
