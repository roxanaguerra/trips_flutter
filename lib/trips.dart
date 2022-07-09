import 'package:flutter/material.dart';
import 'package:trips_app/home/home_page.dart';
import 'package:trips_app/profile/profile_page.dart';
import 'package:trips_app/search/search_page.dart';

class Trips extends StatefulWidget {
  const Trips({Key? key}) : super(key: key);

  @override
  State<Trips> createState() => _TripsState();
}

class _TripsState extends State<Trips> {
  int indexTap = 0;

  final List<Widget> widgetChildren = const [
    HomePage(),
    SearchPage(),
    ProfilePage(),
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Center(
      //     child: Text("Hola Mundo 33"),
      //   ),
      // ),
      // body: DescriptonPlace("Perú", 4, descriptionDummy),
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
        child: BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: indexTap,
            selectedItemColor: const Color(0xFF4268D3),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ]),
      ),
      body: widgetChildren[indexTap],
    );
  }
}
