import 'package:flutter/material.dart';
// import 'src/screens/WelcomeScreens.dart';
// import 'src/screens/AuthenticationScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Survey App',
      theme: ThemeData(
        // TODO : Add theme data and refactor explicit color choices in the code
        primarySwatch: Colors.purple,
      ),
      home: QuestionScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  // PageController _pageController = PageController();

  // int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color.fromRGBO(58, 45, 119, 1),
            )),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: [
            TextQuestion(),
            TextQuestion(),
            TextQuestion(),
          ],
        ),
      ),
    );
  }
}

class TextQuestion extends StatelessWidget {
  const TextQuestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          true
              ? Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("TITRE DE LE FORMULAIRE",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(58, 45, 119, 1),
                          )),
                      Container(
                        width: 25.0,
                        child: Divider(
                            height: 20.0,
                            thickness: 1.5,
                            color: Color.fromRGBO(58, 45, 119, 1)),
                      ),
                    ],
                  ),
                )
              // ignore: dead_code
              : SizedBox(height: 35.0),
          SizedBox(height: 35.0),
          Container(
            // height: 2000,
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                color: Colors.grey[200]),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "C'est ici ou la question doit etre posser?",
                    style: TextStyle(
                        color: Color.fromRGBO(58, 45, 119, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Réponse"
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
              child: ElevatedButton(
            onPressed: () => {},
            child: Text("Suivant"),
            style:
                ElevatedButton.styleFrom(primary: Color.fromRGBO(58, 45, 119, 1)),
          ))
        ]),
      ),
    );
  }
}
