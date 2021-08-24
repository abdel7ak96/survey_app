import 'package:flutter/material.dart';

class TextQuestion extends StatelessWidget {
  const TextQuestion({Key? key, required this.question}) : super(key: key);

  final String question;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.0), color: Colors.grey[200]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question,
            style: TextStyle(
                color: Color.fromRGBO(58, 45, 119, 1),
                fontWeight: FontWeight.w500,
                fontSize: 16.0),
          ),
          TextFormField(
            validator: (value) {
              if(value == null || value.isEmpty) {
                return "Cette question est obligatoire";
              }
              return null;
            },
            decoration: InputDecoration(hintText: "Réponse"),
          )
        ],
      ),
    );
  }
}
