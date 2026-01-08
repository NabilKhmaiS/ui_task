import 'package:flutter/material.dart';

import '../../../../../core/date/models/category_model.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_size.dart';
import '../../../../../core/utils/app_text_styles.dart';

class CategoryItem extends StatelessWidget {
  final CategoryItemModel model;
  final VoidCallback? onTap;


  const CategoryItem({super.key, required this.model, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            width: AppSizes.size64,
            height: AppSizes.size64,
            decoration: BoxDecoration(
              color: model.backgroundColor,
              borderRadius: BorderRadius.circular(AppSizes.radius14),
              border: Border.all(color: AppColors.border),
            ),
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.space12),
              child: Image.asset(
                model.imageAsset,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        const SizedBox(height: AppSizes.space8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.space10),
          child: Text(
            model.title,
            style: AppTextStyles.sectionTitle,
          ),
        ),
      ],
    );
  }
}
