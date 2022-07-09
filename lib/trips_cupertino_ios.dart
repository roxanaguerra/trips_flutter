import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:trips_app/home/home_page.dart';
import 'package:trips_app/profile/profile_page.dart';
import 'package:trips_app/search/search_page.dart';

class TripsCupertinoIOS extends StatelessWidget {
  const TripsCupertinoIOS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          // currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.indigo), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.indigo), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.indigo), label: ""),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          late final CupertinoTabView returnValue;
          switch (index) {
            case 0:
              returnValue = CupertinoTabView(
                builder: (BuildContext context) => const HomePage(),
              );
              break;
            case 1:
              returnValue = CupertinoTabView(
                builder: (BuildContext context) => const SearchPage(),
              );
              break;
            case 2:
              returnValue = CupertinoTabView(
                builder: (BuildContext context) => const ProfilePage(),
              );
              break;
          }
          return returnValue;
        },
      ),
    );
  }
}
