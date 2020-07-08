import 'package:flutter/material.dart';

class CustomFormField extends StatefulWidget {
  const CustomFormField(
      {@required this.size,
      @required this.controller,
      @required this.obscureText});

  final Size size;
  final TextEditingController controller;
  final bool obscureText;

  @override
  _CustomFormFieldState createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          width: widget.size.width * 0.8,
          child: TextFormField(
            validator: (value) {
              if (value.length == 0) {
                return 'Field can\'t be left empty';
              } else {
                return null;
              }
            },
            controller: widget.controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(color: Colors.black, width: 0.2)),
            ),
            obscureText: widget.obscureText,
          ),
        ),
      ],
    );
  }
}
