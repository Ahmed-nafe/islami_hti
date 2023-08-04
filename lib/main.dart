import 'package:flutter/material.dart';
import 'package:islami_hti/screens/home/home.dart';
import 'package:islami_hti/screens/sura_details/sura_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Home.routeName : (_) => Home(),
        SuraDetails.routeName : (_) => SuraDetails()
      },
      initialRoute: Home.routeName,
    );
  }
}