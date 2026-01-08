import 'package:flutter/material.dart';
import '../../../../core/utils/app_size.dart';
import '../../../../core/utils/app_text.dart';
import '../../../../generated/assets.dart';
import '../widget/categories/category_list.dart';
import '../widget/shared/home_tap_bar.dart';
import '../widget/popular/popular_list.dart';
import '../widget/recommended/recommended_slider.dart';
import '../widget/shared/section_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: HomeTopBar(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(width: AppSizes.space1),
              ),

              SliverToBoxAdapter(
                child: SectionHeader(title: AppTexts.ExplorarCategorias, seeAll: AppTexts.seeAll,onSeeAll: () {},),
              ),

              SliverToBoxAdapter(
                child: CategoriesHorizontalList(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(width: AppSizes.space1),
              ),

              SliverToBoxAdapter(
                child: SectionHeader(title: AppTexts.popularProducts,onSeeAll: () {},),
              ),
              SliverToBoxAdapter(
                child: PopularProductsHorizontalList(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(width: AppSizes.space1),
              ),

              SliverToBoxAdapter(
                child: SectionHeader(title: AppTexts.recommended,onSeeAll: () {},),
              ),

              SliverToBoxAdapter(
                child: RecommendedSlider()
              ),


            ],
          ),
        ),
      ),
    );
  }
}
