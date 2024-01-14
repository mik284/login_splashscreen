import 'package:flutter/cupertino.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final String family;
  final double size;
  final FontWeight weight;
  final TextAlign align;

  const TextWidget(
      {super.key,
      required this.text,
      required this.color,
      required this.family,
      required this.size,
      required this.weight,
      required this.align});
  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: align,
        style: TextStyle(
            color: color,
            fontSize: size,
            fontFamily: family,
            fontWeight: weight));
  }
}
