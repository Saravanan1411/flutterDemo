import 'package:flutter/material.dart';
import 'package:flutterdemo/screens/AmazonHome.dart';
import 'package:flutterdemo/screens/MarkCalculator.dart';
import 'package:flutterdemo/screens/SpotifyPlaylsit.dart';

// import 'login1.dart';
// import 'login2.dart';
// import 'login.dart';
// import 'example.dart';
// import 'listtileexample.dart';
// import 'examples/bottomnavigationexample.dart';
// import 'examples/listviewbuilderexample.dart';
// import 'carousel.dart';
// import 'examples/gridviewExample.dart';

import 'addingDataToList/gettingData.dart';
import 'examples/InputTask1.dart';
import 'examples/map.dart';
import 'screens/AmazonHome.dart';
import 'screens/AmazonProduct.dart';


void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: InputScreen(),
    );
  }
}