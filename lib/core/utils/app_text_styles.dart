import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
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

    color: AppColors.ingre,
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
  static const TextStyle recommendedTitle = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );

  static const TextStyle recommendedSubtitle = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    color: AppColors.textHint,
  );

  static const TextStyle recommendedPrice = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: AppColors.primary,
  );

  static TextStyle appBarTitle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColor.white,
  );

  static const TextStyle sectionTitles = TextStyle(fontWeight: FontWeight.w700,color: AppColors.ingre);

  static const TextStyle description = TextStyle(
    color: Color(0xFF7A8796),
    fontSize: 12,
    height: 1.4,
  );

  static const TextStyle smallRightText = TextStyle(fontSize: 11);
  static const title = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );

  static const cardTitle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );

  static const body = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
  );

  static const label = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const price = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w800,
    color: AppColors.primary,
  );
   static const Carrito =   TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w700,
  color: Color(0xFF1F2937),
  );
  static const cartItemDescription = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    color: Color(0xFF6B7280),
    height: 1.2,
  );

  static const quantityText = TextStyle(
    fontWeight: FontWeight.w700,
  );

  static const priceText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w800,
    color: Color(0xFF20D0C4),
  );
  static final cartCardDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(24),
    boxShadow: const [
      BoxShadow(
        color: Color(0x14000000),
        blurRadius: 18,
        offset: Offset(0, 8),
      ),
    ],
  );

  static const cardPadding = EdgeInsets.all(14);







}
