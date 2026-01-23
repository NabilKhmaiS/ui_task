


import 'package:flutter/material.dart';

import '../../../../core/utils/app_text.dart';

class BottomOrderBar extends StatelessWidget {
  const BottomOrderBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF6C3ADC),
                  Color(0xFF1BC7C2),
                ],
              ),
            ),
            child: Center(
              child: Text(
                AppTexts.ordenarAhora,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 14),
        const Text(
          AppTexts.price,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}
