import 'package:flutter/cupertino.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final String mikey;
  final double fontsize;
  final FontWeight fontweight;
  final TextAlign texty;

  const TextWidget(
      {super.key,
      required this.text,
      required this.color,
      required this.mikey,
      required this.fontsize,
      required this.fontweight,
      required this.texty});
  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: texty,
        style: TextStyle(
            color: color,
            fontSize: fontsize,
            fontFamily: mikey,
            fontWeight: fontweight));
  }
}
