import 'package:flutter/material.dart';
// import 'src/views/WelcomeViews.dart';
// import 'src/views/IdentificationView.dart';
import 'src/views/QuestionsView.dart';

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
        accentColor: Color.fromRGBO(58, 45, 119, 1),
      ),
      home: QuestionsView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
