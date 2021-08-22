import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class WelcomeScreens extends StatefulWidget {
  const WelcomeScreens({Key? key}) : super(key: key);

  @override
  _WelcomeScreensState createState() => _WelcomeScreensState();
}

class _WelcomeScreensState extends State<WelcomeScreens> {
  PageController _pageController = PageController(
    initialPage: 0,
  );

  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView(
            onPageChanged: (index) {
              setState(() {
                _currentPageIndex = index;
              });
            },
        controller: _pageController,
        children: [_FirstScreen(), _SecondScreen(), _ThirdScreen()],
      )),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DotsIndicator(
              dotsCount: 3,
              position: _currentPageIndex.toDouble(),
              decorator: DotsDecorator(
                  activeSize: Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  spacing: EdgeInsets.all(2.0),
                  color: Color.fromRGBO(185, 181, 207, 1),
                  activeColor: Color.fromRGBO(58, 45, 119, 1)),
            ),
            ElevatedButton(
              onPressed: () => {
                setState(() {
                  _currentPageIndex = (_currentPageIndex + 1) < 3 ? (_currentPageIndex + 1) : 2;
                  _pageController.animateToPage(
                    _currentPageIndex,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.ease
                  );
                })
              },
              child: Text("PASSER"),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(58, 190, 240, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0))),
            ),
          ],
        ),
      ),
    );
  }
}

class _FirstScreen extends StatelessWidget {
  const _FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset("images/1.png"),
          ),
          Column(
            children: [
              Text(
                "Bienvenue",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Color.fromRGBO(58, 45, 119, 1)),
              ),
              SizedBox(height: 12.0),
              Text(
                  "Ce texte est un exemple de texte qui peut etre remplacer dans le meme espace",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16.0, color: Color.fromRGBO(58, 45, 119, 1))),
            ],
          ),
        ],
      ),
    );
  }
}

class _SecondScreen extends StatelessWidget {
  const _SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset("images/2.png"),
          ),
          Column(
            children: [
              Text(
                "Bienvenue",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Color.fromRGBO(58, 45, 119, 1)),
              ),
              SizedBox(height: 12.0),
              Text(
                  "Ce texte est un exemple de texte qui peut etre remplacer dans le meme espace",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16.0, color: Color.fromRGBO(58, 45, 119, 1))),
            ],
          ),
        ],
      ),
    );
  }
}

class _ThirdScreen extends StatelessWidget {
  const _ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset("images/3.png"),
          ),
          Column(
            children: [
              Text(
                "Bienvenue",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Color.fromRGBO(58, 45, 119, 1)),
              ),
              SizedBox(height: 12.0),
              Text(
                  "Ce texte est un exemple de texte qui peut etre remplacer dans le meme espace",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16.0, color: Color.fromRGBO(58, 45, 119, 1))),
            ],
          ),
        ],
      ),
    );
  }
}