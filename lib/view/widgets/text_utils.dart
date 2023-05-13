import 'package:flutter/material.dart';

class Text_u extends StatelessWidget {
  final String text;
  final double fontsize;
  final Color color;
  final FontWeight fontWeight;
  final TextOverflow? overflow;
  final TextDirection? textDirection;
  final String? fontFamily;

  const Text_u(
      {required this.text,
      required this.fontsize,
      required this.color,
      required this.fontWeight,
      this.overflow,
      this.textDirection,
      this.fontFamily,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textDirection: textDirection,
      style: TextStyle(
        overflow: overflow,
        fontSize: fontsize,
        fontWeight: fontWeight,
        color: color,
        fontFamily: fontFamily,
      ),
    );
  }
}
