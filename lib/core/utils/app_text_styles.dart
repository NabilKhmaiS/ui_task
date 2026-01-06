import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {

  static const TextStyle homeTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w800,
    color: AppColors.primary,
  );

  static const TextStyle searchHint = TextStyle(
    fontSize: 14,
    color: AppColors.textHint,
  );
  static const TextStyle sectionTitle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );

  // ===== See All =====
  static const TextStyle seeAll = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.verTodo,
  );

  static const TextStyle popularTitle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );

  static const TextStyle popularSubtitle = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    color: AppColors.textHint,
  );

  static const TextStyle popularPrice = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: AppColors.primary,
  );
}
