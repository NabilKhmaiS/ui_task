import 'package:flutter/material.dart';
import 'package:ui_task/core/extensions/navigation_extensions.dart';
import 'package:ui_task/core/routing/routes.dart';
import 'package:ui_task/features/home/presentation/screens/home_screens.dart';
import '../../../../../core/date/category_model.dart';
import '../../../../../core/utils/app_size.dart';
import 'category_item.dart';

class CategoriesHorizontalList extends StatelessWidget {
  const CategoriesHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    final items = HomeCategories.items;

    return SizedBox(
      height: 96,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.space16),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (_, __) => const SizedBox(width: AppSizes.space14),
        itemBuilder: (context, index) => CategoryItem(model: items[index],
        ),
      ),
    );
  }
}
