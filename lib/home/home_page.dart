import 'package:flutter/material.dart';
import 'package:trips_app/home/widgets/description_place.dart';
import 'package:trips_app/home/header_appbar.dart';
import 'package:trips_app/home/review_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String descriptionPrimary =
        "Es una ciudad de la región Apurímac de Perú. Al noreste, el Mirador de Taraccasa ofrece vistas panorámicas de la ciudad. Al norte, en el Santuario Nacional de Ampay, hay bosques protegidos en donde viven pumas y osos andinos.";

    String descriptionSecondary =
        "Abancay está ubicado en el sur de los andes peruanos, entre las cordilleras oriental y occidental, a una altura de 2,377 m s. n. m. a orillas del río Mariño, afluente del río Pachachaca. Debido a sus montañas secas y su clima cálido todo el año es conocido como 'El valle de la eterna primavera'.";

    return Stack(children: [
      ListView(
        children: [
          DescriptonPlace(
              "Abancay", 4, descriptionPrimary, descriptionSecondary),
          const ReviewList(),
        ],
      ),
      const HeaderAppBar(),
    ]);
  }
}
