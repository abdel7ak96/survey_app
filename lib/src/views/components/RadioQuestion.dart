import 'package:flutter/material.dart';

class RadioQuestion extends StatefulWidget {
  const RadioQuestion({Key? key, required this.question, required this.options}) : super(key: key);

  final String question;
  final List<String> options;

  @override
  _RadioQuestionState createState() => _RadioQuestionState();
}

class _RadioQuestionState extends State<RadioQuestion> {

  int? _value = -1;

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
            widget.question,
            style: TextStyle(
                color: Color.fromRGBO(58, 45, 119, 1),
                fontWeight: FontWeight.w500,
                fontSize: 16.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List<Widget>.generate(widget.options.length, (index) => 
              Container(
                margin: EdgeInsets.all(2.0),
                child: ChoiceChip(
                  label: Text(widget.options[index]),
                  selectedColor: Color.fromRGBO(58, 190, 240, 1),
                  selected: _value == index,
                  onSelected: (bool selected) {
                    setState(() {
                      _value = selected ? index : _value;
                    });
                  },
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}
