import 'package:flutter/material.dart';
import 'package:insolvensi/views/themes/styles.dart';

class TextInput extends StatefulWidget {
  final String label;
  final String hinText;

  TextInput({@required this.label, @required this.hinText});

  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label, style: Styles.textInputLabel),
        SizedBox(height: 11.0),
        Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          height: 48,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFFE8ECEF),
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: widget.hinText,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        SizedBox(height: 11),
      ],
    );
  }
}
