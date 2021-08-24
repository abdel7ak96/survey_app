import 'package:flutter/material.dart';

class CheckBoxQuestion extends StatefulWidget {
  const CheckBoxQuestion(
      {Key? key, required this.question, required this.options})
      : super(key: key);

  final String question;
  final List<String> options;

  @override
  _CheckBoxoQuestionState createState() => _CheckBoxoQuestionState();
}

class _CheckBoxoQuestionState extends State<CheckBoxQuestion> {
  List<int> _values = [];

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
              children: List<Widget>.generate(
                widget.options.length,
                (index) => Container(
                  margin: EdgeInsets.all(2.0),
                  child: ChoiceChip(
                    label: Text(widget.options[index],
                        style: TextStyle(
                            color:
                                _values.contains(index) ? Colors.white : null,
                            fontWeight: FontWeight.w500)),
                    selectedColor: Color.fromRGBO(58, 190, 240, 1),
                    selected: _values.contains(index),
                    onSelected: (bool selected) {
                      setState(() {
                        if (selected) {
                          _values.add(index);
                        } else {
                          _values.remove(index);
                        }
                      });
                    },
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
