import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color color;
  final double width;
  final double height, radius;
  final Widget widget;

  const ButtonWidget(
      {super.key,
        required this.color,
        required this.width,
        required this.height,
        required this.radius,
        required this.widget});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(radius), border: Border.all(color: Colors.blueAccent)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(child: widget),
      ),
    );
  }
}
