import 'package:flutter/material.dart';
import 'package:ui_task/core/utils/app_colors.dart';
import 'package:ui_task/core/utils/app_text.dart';
import 'package:ui_task/core/utils/app_text_styles.dart';

import '../../../../generated/assets.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(28),
                boxShadow:  [
                  BoxShadow(
                    color: AppColors.primary,
                    blurRadius: 20,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: Image.asset(
                Assets.Devlier,
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 24),

            // App name
            Text(
              AppTexts.appName,
              style: AppTextStyles.splashTitleDark,
            ),
          ],
        ),
      ),
    );
  }
}
