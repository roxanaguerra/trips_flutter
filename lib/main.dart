import 'package:flutter/material.dart';
import 'package:trips_app/description_place.dart';
import 'package:trips_app/header_appbar.dart';
import 'package:trips_app/review_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  String descriptionDummy =
      "Enim occaecat cupidatat tempor ex ipsum do mollit fugiat eu cillum aute minim et pariatur. Excepteur adipisicing sit et excepteur aliqua officia fugiat proident pariatur cillum reprehenderit nisi. Mollit enim labore in elit esse et aliqua ea et. Irure incididunt id aliqua ullamco in cillum pariatur occaecat non proident magna dolor laborum.";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Center(
        //     child: Text("Hola Mundo 33"),
        //   ),
        // ),
        // body: DescriptonPlace("Perú", 4, descriptionDummy),
        body: Stack(children: [
          ListView(
            children: [
              DescriptonPlace("Perú", 4, descriptionDummy),
              ReviewList(),
            ],
          ),
          HeaderAppBar(),
        ]),
      ),
    );
  }
}
