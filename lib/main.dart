import 'package:flutter/material.dart';
// import 'src/screens/WelcomeScreens.dart';

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
      home: AuthenticationScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () => {},
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Color.fromRGBO(58, 45, 119, 1),
                        size: 25.0,
                      )),
                  IconButton(
                      onPressed: () => {},
                      icon: Icon(
                        Icons.settings_applications_sharp,
                        color: Color.fromRGBO(58, 45, 119, 1),
                        size: 25.0,
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Bienvenue",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            color: Color.fromRGBO(58, 45, 119, 1))),
                    SizedBox(height: 15.0),
                    Text(
                      "Réglemenet Général sur les données personelles (RGPD)",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0,
                          color: Color.fromRGBO(147, 140, 180, 1)),
                    )
                  ],
                ),
              ),
              Text(
                "IDENTIFICATION DE L'ENTREPRISE",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(58, 45, 119, 1)
                )
              )
            ],
          ),
        ),
      ]),
    ));
  }
}
