import 'package:flutter/material.dart';

class TextField3D extends StatelessWidget {
  final String label;
  final String hintText;
  final bool obsecureText;
  TextField3D({
    Key key,
    this.label,
    this.hintText,
    this.obsecureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: Color(0xFFEFF3F6),
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    offset: Offset(6, 2),
                    blurRadius: 6,
                    spreadRadius: 3),
                BoxShadow(
                    color: Color.fromRGBO(255, 255, 255, 0.9),
                    offset: Offset(-6, -2),
                    blurRadius: 6,
                    spreadRadius: 3)
              ],
              borderRadius: BorderRadius.circular(100)),
          child: TextField(
            obscureText:
                (obsecureText == null || obsecureText == false) ? false : true,
            decoration:
                InputDecoration(border: InputBorder.none, hintText: hintText),
          ),
        ),
      ],
    );
  }
}
