import 'package:flutter/material.dart';
import 'package:ui_task/core/routing/app_router.dart';

import '../../../../../core/date/models/popular_product_model.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/utils/app_size.dart';
import 'popular_product_card.dart';

class PopularProductsHorizontalList extends StatelessWidget {
  const PopularProductsHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    final items = HomePopularProducts.item;

    return SizedBox(
      height: 200,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.space16),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (_, __) => const SizedBox(width: AppSizes.space14),
        itemBuilder: (context, index) => PopularProductCard(model: items[index]
            ,onTap: () {
            Navigator.pushNamed(context, AppRoutes.details);
            },

        ),
      ),
    );
  }
}
