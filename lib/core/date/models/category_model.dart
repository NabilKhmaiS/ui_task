import 'package:flutter/material.dart';

import '../../../generated/assets.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_text.dart';

class CategoryItemModel {
  final String title;
  final String imageAsset;
  final Color backgroundColor;

  const CategoryItemModel({
    required this.title,
    required this.imageAsset,
    required this.backgroundColor,
  });

}


class HomeCategories {

  static  List<CategoryItemModel> items = [
    CategoryItemModel(

      title: AppTexts.tacos,
      imageAsset: Assets.imagesGrupo,
      backgroundColor: AppColors.tacos,
    ),
    CategoryItemModel(

      title: AppTexts.burger2,
      imageAsset: Assets.burger2,
      backgroundColor: AppColors.tacos,
    ),
    CategoryItemModel(
      title: AppTexts.Frias,
      imageAsset: Assets.imagesGrupos,
      backgroundColor: AppColors.Frias          ,
    ),

    CategoryItemModel(
      title: AppTexts.burger,
      imageAsset: Assets.imagesGruposs,
      backgroundColor: AppColors.Burger,
    ),
    CategoryItemModel(
      title: AppTexts.pizza,
      imageAsset: Assets.imagesGruposss,
      backgroundColor: AppColors.Pizza,
    ),CategoryItemModel(
      title: AppTexts.sushi,
      imageAsset: Assets.imagesTrazado,
      backgroundColor: AppColors.Sushi,
    ),
  ];
}
