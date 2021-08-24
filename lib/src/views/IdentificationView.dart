import 'package:flutter/material.dart';

class IdentificationView extends StatelessWidget {
  const IdentificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color.fromRGBO(58, 45, 119, 1),
              size: 25.0,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () => {},
                icon: Icon(
                  Icons.settings_applications_sharp,
                  color: Color.fromRGBO(58, 45, 119, 1),
                  size: 25.0,
                ))
          ],
        ),
        body: SafeArea(
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
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
                  Text("IDENTIFICATION DE L'ENTREPRISE",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(58, 45, 119, 1))),
                  Container(
                    width: 25.0,
                    child: Divider(
                        height: 20.0,
                        thickness: 1.5,
                        color: Color.fromRGBO(58, 45, 119, 1)),
                  ),
                  Form(
                      child: Column(
                    children: [
                      _InputField(hintText: "Dénomination sociale *"),
                      _InputField(hintText: "Effectif *"),
                      _InputField(hintText: "Référent (représentant légal) *"),
                    ],
                  ))
                ],
              ),
            ),
          ]),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () => {/*TODO : Implement form validation and routing*/},
          child: Icon(Icons.double_arrow_rounded),
          backgroundColor: Color.fromRGBO(58, 45, 119, 1),
          elevation: 0,
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Color.fromRGBO(58, 45, 119, 1),
          child: SizedBox(height: 50.0),
        ));
  }
}

class _InputField extends StatelessWidget {
  const _InputField({Key? key, this.hintText = ""}) : super(key: key);

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          color: Colors.grey[100]),
      child: TextFormField(
        style: TextStyle(color: Color.fromRGBO(58, 45, 119, 1)),
        decoration: InputDecoration(
          hintStyle: TextStyle(
              color: Color.fromRGBO(58, 45, 119, 1),
              fontWeight: FontWeight.w300,
              fontSize: 14.0),
          hintText: hintText,
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
        ),
      ),
    );
  }
}
