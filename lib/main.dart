import 'package:flutter/material.dart';
import 'src/screens/WelcomeScreens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Survey App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: WelcomeScreens(),
      debugShowCheckedModeBanner: false,
    );
  }
}