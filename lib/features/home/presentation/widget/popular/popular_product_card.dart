import 'package:flutter/material.dart';

import '../../../../../core/date/models/popular_product_model.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_size.dart';
import '../../../../../core/utils/app_text_styles.dart';

class PopularProductCard extends StatelessWidget {
  final PopularProductModel model;
  final VoidCallback? onTap;
  final VoidCallback? onArrowTap;
  final VoidCallback? onFavTap;

  const PopularProductCard({
    super.key,
    required this.model,
    this.onTap,
    this.onArrowTap,
    this.onFavTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSizes.popularCardWidth,
      height: AppSizes.popularCardHeight,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(AppSizes.radius16),
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(AppSizes.space12),
            decoration: BoxDecoration(
              color: AppColors.cardBg,
              borderRadius: BorderRadius.circular(AppSizes.radius16),
              border: Border.all(color: AppColors.border),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 16,
                  offset: Offset(0, 6),
                  color: AppColors.shadow,
                )
              ],
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: onFavTap,
                    borderRadius: BorderRadius.circular(AppSizes.radius20),
                    child: Container(
                      width: AppSizes.size32,
                      height: AppSizes.size32,
                      decoration: BoxDecoration(
                        color: AppColors.softGrey,
                        borderRadius: BorderRadius.circular(AppSizes.radius20),
                      ),
                      child: Icon(
                        model.isFavorite ? Icons.favorite : Icons.favorite_border,
                        size: 18,
                        color: model.isFavorite ? AppColors.accent : AppColors.icon,
                      ),
                    ),
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: AppSizes.space4),

                    Center(
                      child: Container(
                        width: AppSizes.size72,
                        height: AppSizes.size72,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: AppColors.border),
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            model.imageAsset,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: AppSizes.space12),


                    Text(
                      model.title,
                      style: AppTextStyles.popularTitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),

                    const SizedBox(height: AppSizes.space4),

                    Text(
                      model.subtitle,
                      style: AppTextStyles.popularSubtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),

                    const Spacer(),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$${model.price.toStringAsFixed(2)}',
                          style: AppTextStyles.popularPrice,
                        ),
                        InkWell(
                          onTap: onArrowTap,
                          borderRadius: BorderRadius.circular(AppSizes.radius20),
                          child: Container(
                            width: AppSizes.size28,
                            height: AppSizes.size28,
                            decoration: BoxDecoration(
                              color: AppColors.softGrey,
                              borderRadius: BorderRadius.circular(AppSizes.radius20),
                              border: Border.all(color: AppColors.border),
                            ),
                            child: const Icon(
                              Icons.chevron_right,
                              size: 18,
                              color: AppColors.icon,
                            ),
                          ),
                        ),
                      ],
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
