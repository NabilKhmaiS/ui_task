import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_task/core/utils/app_colors.dart';

class DeleteButton extends StatelessWidget {
  final VoidCallback onTap;
  const DeleteButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(999),
      child: Container(
        width: 34,
        height: 34,
        decoration: const BoxDecoration(
          color: Color(0xFFEF4444),
          shape: BoxShape.circle,
        ),
        child:  Icon(
          Icons.delete_outline,
          color: AppColors.white,
          size: 18,
        ),
      ),
    );
  }
}
