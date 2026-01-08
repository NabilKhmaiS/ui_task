import 'dart:async';
import 'package:flutter/material.dart';

import '../../../../../core/date/models/recommended_model.dart';
import '../../../../../core/utils/app_size.dart';
import 'recommended_card.dart';

class RecommendedSlider extends StatefulWidget {
  const RecommendedSlider({super.key});

  @override
  State<RecommendedSlider> createState() => _RecommendedSliderState();
}

class _RecommendedSliderState extends State<RecommendedSlider> {
  final controller = PageController(viewportFraction: 0.78);
  Timer? timer;
  int index = 0;

  @override
  void initState() {
    super.initState();
    _startAutoPlay();
  }

  void _startAutoPlay() {
    final items = HomeRecommendedItems.items;
    if (items.length <= 1) return;

    timer = Timer.periodic(const Duration(seconds: 3), (_) {
      if (!mounted) return;

      index = (index + 1) % items.length;
      controller.animateToPage(
        index,
        duration: const Duration(milliseconds: 450),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final items = HomeRecommendedItems.items;

    return SizedBox(
      height: AppSizes.recommendedCardHeight,
      child: PageView.builder(
        controller: controller,
        itemCount: items.length,
        padEnds: false,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.space16),
            child: RecommendedCard(model: items[index]),
          );
        },
      ),
    );
  }
}
