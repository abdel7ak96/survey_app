import 'package:flutter/material.dart';
import './components/TextQuestion.dart';

class QuestionsView extends StatefulWidget {
  const QuestionsView({Key? key}) : super(key: key);

  @override
  _QuestiosViewState createState() => _QuestiosViewState();
}

class _QuestiosViewState extends State<QuestionsView> {
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
            _FormPart(
                formTitle: "EVALUATION CONNAISSANCES & ORGANISATION",
                nextPage: _nextPage),
            _FormPart(
                formTitle: "ETAPE DE L'ETAT DES LIEUX POUR L'EVALUATION",
                nextPage: _nextPage),
            _FormPart(nextPage: _nextPage),
          ],
        ),
      ),
    );
  }
}

class _FormPart extends StatefulWidget {
  const _FormPart({Key? key, required this.nextPage, this.formTitle = ""})
      : super(key: key);

  final Function nextPage;
  final String formTitle;

  @override
  __FormPartState createState() => __FormPartState();
}

class __FormPartState extends State<_FormPart> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          widget.formTitle != ""
              ? Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.formTitle,
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
          Form(
            key: _formKey,
            child: Column(
              children: [
                TextQuestion(
                  question: "Avez-vous connaissance du RGPD ?",
                  formKey: _formKey,
                ),
                TextQuestion(
                  question: "Question 2",
                  formKey: _formKey,
                ),
              ],
            )
          ),
          SizedBox(height: 20.0),
          Center(
              child: ElevatedButton(
            onPressed: () {
              // TODO : Save answers to state
              if(_formKey.currentState!.validate()) {
                widget.nextPage();
              }
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