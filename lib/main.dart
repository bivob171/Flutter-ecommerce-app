import 'package:flutter/material.dart';
import 'constants.dart';
import 'screens/home/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          visualDensity:VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

