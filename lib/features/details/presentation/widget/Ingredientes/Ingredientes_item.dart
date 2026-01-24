import 'package:flutter/material.dart';

import '../../../../../core/date/models/Ingredientes_model.dart';
import '../../../../../core/date/models/category_model.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_size.dart';
import '../../../../../core/utils/app_text_styles.dart';

class IngredientesItem extends StatelessWidget {
  final IngredienteModel model;
  final VoidCallback? onTap;


  const IngredientesItem({super.key, required this.model, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            width: 80,
            height: 104,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSizes.radius14),
            //  border: Border.all(color: AppColors.border),
              image: DecorationImage(
                image: AssetImage(model.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        //const SizedBox(height: AppSizes.space4),
        Padding(
          padding:  EdgeInsets.zero,
          child: Text(
            model.title,
            style: AppTextStyles.sectionTitle,
          ),
        ),
      ],
    );
  }
}
