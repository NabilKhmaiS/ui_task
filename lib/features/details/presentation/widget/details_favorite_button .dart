import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_size.dart';

class DetailsFavoriteButton extends StatelessWidget {
  const DetailsFavoriteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: AppSizes.favRight,
      bottom: AppSizes.favBottom,
      child: Container(
        width: AppSizes.favSize,
        height: AppSizes.favSize,
        decoration: BoxDecoration(
          color: AppColors.favColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Icon(
          Icons.favorite_border,
          color: Colors.white,
          size: 22,
        ),
      ),
    );
  }
}
