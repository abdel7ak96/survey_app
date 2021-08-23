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
  PageController _pageController = PageController(initialPage: 0);

  int _currentPageIndex = 0;

  void _previousPage() {
    setState(() {
      _currentPageIndex =
          _currentPageIndex > 0 ? _currentPageIndex - 1 : _currentPageIndex;
      _pageController.animateToPage(_currentPageIndex,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  void _nextPage() {
    setState(() {
      _currentPageIndex =
          _currentPageIndex < 2 ? _currentPageIndex + 1 : _currentPageIndex;
      _pageController.animateToPage(_currentPageIndex,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => {_previousPage()},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color.fromRGBO(58, 45, 119, 1),
            )),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            _FormPart(formTitle: "EVALUATION CONNAISSANCES & ORGANISATION" ,nextPage: _nextPage),
            _FormPart(formTitle: "ETAPE DE L'ETAT DES LIEUX POUR L'EVALUATION" ,nextPage: _nextPage),
            _FormPart(nextPage: _nextPage),
          ],
        ),
      ),
    );
  }
}

class _FormPart extends StatelessWidget {
  const _FormPart({Key? key, required this.nextPage, this.formTitle=""}) : super(key: key);

  final Function nextPage;
  final String formTitle;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          formTitle != ""
              ? Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(formTitle,
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
          _TextQuestion(),
          SizedBox(height: 20.0),
          Center(
              child: ElevatedButton(
            onPressed: () {
              nextPage();
            },
            child: Text("Suivant"),
            style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(58, 45, 119, 1)),
          ))
        ]),
      ),
    );
  }
}

class _TextQuestion extends StatelessWidget {
  const _TextQuestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.0), color: Colors.grey[200]),
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
              decoration: InputDecoration(hintText: "Réponse"),
            )
          ],
        ),
      ),
    );
  }
}
