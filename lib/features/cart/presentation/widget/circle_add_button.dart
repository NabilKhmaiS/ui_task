import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleAddButton extends StatelessWidget {
  final VoidCallback onTap;
  const CircleAddButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(999),
      child: Container(
        width: 44,
        height: 44,
        decoration: const BoxDecoration(
          color: Color(0xFF5117AC),
          shape: BoxShape.circle,
        ),
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
