import 'package:flutter/cupertino.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_size.dart';
import '../../../../core/utils/app_text.dart';
import '../../../../core/utils/app_text_styles.dart';
import 'Ingredientes/ingrediente_list.dart';

class DetailsContent extends StatelessWidget {
  final Function(String image) onIngredientTap;

  const DetailsContent({
    super.key,
    required this.onIngredientTap,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.space16,
          vertical: AppSizes.space8,
        ),
        decoration: BoxDecoration(color: AppColors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppTexts.descripcion, style: AppTextStyles.sectionTitle),
            const SizedBox(height: 8),
            Text(AppTexts.detailsDescriptionText, style: AppTextStyles.description),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(AppTexts.ingredientes, style: AppTextStyles.sectionTitle),
                const Spacer(),
                Text(AppTexts.ingredientesCount, style: AppTextStyles.smallRightText),
              ],
            ),
            SizedBox(height: AppSizes.space4),

            IngredienteList(
              onItemTap: (img) => onIngredientTap(img),
            ),
          ],
        ),
      ),
    );
  }
}
