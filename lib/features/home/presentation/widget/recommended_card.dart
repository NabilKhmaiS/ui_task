import 'package:flutter/material.dart';

import '../../../../core/date/recommended_model.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_size.dart';
import '../../../../core/utils/app_text_styles.dart';


class RecommendedCard extends StatelessWidget {
  final RecommendedItemModel model;
  final VoidCallback? onTap;

  const RecommendedCard({
    super.key,
    required this.model,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSizes.recommendedCardWidth,
      height: AppSizes.recommendedCardHeight,
      child: Material(
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(AppSizes.radius14),
          child: Container(
            padding: const EdgeInsets.all(AppSizes.space12),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(AppSizes.radius14),
              border: Border.all(color: AppColors.border),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 20,
                  offset: Offset(0, 0),
                  color: AppColors.shadow,
                ),
              ],
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    model.isFavorite ? Icons.favorite : Icons.favorite_border,
                    size: 18,
                    color: model.isFavorite ? AppColors.accent : AppColors.icon,
                  ),
                ),

                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(AppSizes.radius14),
                      child: Image.asset(
                        model.imageAsset,
                        width: AppSizes.size48,
                        height: AppSizes.size48,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: AppSizes.space12),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            model.title,
                            style: AppTextStyles.recommendedTitle,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: AppSizes.space4),

                          Text(
                            model.subtitle,
                            style: AppTextStyles.recommendedSubtitle,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: AppSizes.space8),

                          Row(
                            children: [
                              Text(
                                '\$${model.price.toStringAsFixed(2)}',
                                style: AppTextStyles.recommendedPrice,
                              ),
                              const Spacer(),
                              const Icon(Icons.chevron_right, color: AppColors.icon),


                            ],
                          )


                        ],
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
