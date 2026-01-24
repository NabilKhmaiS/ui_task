import 'package:flutter/material.dart';

class InwardCurveClipper extends CustomClipper<Path> {
  const InwardCurveClipper();

  @override
  Path getClip(Size size) {
    final path = Path();

    const startY = 52.0;

    path.lineTo(0, startY);

    path.quadraticBezierTo(
      size.width * 0.50,
      120, 
      size.width,
      startY,
    );

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
