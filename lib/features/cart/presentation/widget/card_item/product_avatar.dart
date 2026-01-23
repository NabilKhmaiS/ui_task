import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductAvatar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      height: 72,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFE5E7EB),
      ),
      child:  Image.asset("assets/images/burger2.png"),
    );
  }
}
