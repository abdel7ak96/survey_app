import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class WelcomeScreens extends StatefulWidget {
  const WelcomeScreens({Key? key}) : super(key: key);

  @override
  _WelcomeScreensState createState() => _WelcomeScreensState();
}

class _WelcomeScreensState extends State<WelcomeScreens> {
  PageController _pageController = PageController();

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
        children: [
          _WelcomeScreen(
              imagePath: "images/1.png",
              title: "Bienvenue",
              description:
                  "Ce texte est un exemple de texte qui peut etre remplacer dans le meme espace"),
          _WelcomeScreen(
              imagePath: "images/2.png",
              title: "Bienvenue",
              description:
                  "Ce texte est un exemple de texte qui peut etre remplacer dans le meme espace"),
          _WelcomeScreen(
              imagePath: "images/3.png",
              title: "Bienvenue",
              description:
                  "Ce texte est un exemple de texte qui peut etre remplacer dans le meme espace")
        ],
      )),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(20.0),
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
                  _currentPageIndex =
                      (_currentPageIndex + 1) < 3 ? (_currentPageIndex + 1) : 2;
                  _pageController.animateToPage(_currentPageIndex,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease);
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

class _WelcomeScreen extends StatelessWidget {
  const _WelcomeScreen(
      {Key? key,
      this.imagePath = "images/1.png",
      this.title = "Default Title",
      this.description = "Default description"})
      : super(key: key);

  final String imagePath;
  final String title;
  final String description;

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
            child: Image.asset(imagePath),
          ),
          Column(
            children: [
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Color.fromRGBO(58, 45, 119, 1)),
              ),
              SizedBox(height: 12.0),
              Text(description,
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
