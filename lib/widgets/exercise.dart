import 'package:flutter/material.dart';

class Exercise extends StatelessWidget {
  const Exercise({Key? key, required this.startColor, required this.endColor}) : super(key: key);

  final Color startColor;
  final Color endColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 10),
      height: 140,
      width: 270,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [startColor, endColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}


