import 'package:flutter/material.dart';

class BackgroundClipPath extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height-120);
    path.quadraticBezierTo(
        size.width / 2, size.height - 170, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
  
}
