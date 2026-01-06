import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_size.dart';
import '../../../../core/utils/app_text.dart';
import '../../../../core/utils/app_text_styles.dart';



class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.space16,
        vertical: AppSizes.space12,
      ),
      child: Row(
        children: [
          // Search
          Expanded(
            child: Container(
              height: AppSizes.searchHeight,
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.space12),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(AppSizes.radius14),
                border: Border.all(color: AppColors.border),
              ),
              child: Row(
                children: const [
                  Icon(
                    Icons.search,
                    size: AppSizes.iconSmall,
                    color: AppColors.icon,
                  ),
                  SizedBox(width: AppSizes.space8),
                  Expanded(
                    child: Text(
                      AppTexts.searchHint,
                      style: AppTextStyles.searchHint,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(width: AppSizes.space14),

          // Title
          const Text(
            AppTexts.inicio,
            style: AppTextStyles.homeTitle,
          ),

          const SizedBox(width: AppSizes.space14),

          // Icons
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              size: AppSizes.iconLarge,
              color: AppColors.secondary,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings_outlined,
              size: AppSizes.iconMedium,
              color: AppColors.accent,
            ),
          ),
        ],
      ),
    );
  }
}
