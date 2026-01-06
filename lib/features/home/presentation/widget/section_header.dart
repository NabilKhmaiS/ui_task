import 'package:flutter/cupertino.dart';
import 'package:ui_task/core/utils/app_size.dart';

import '../../../../core/utils/app_text.dart';
import '../../../../core/utils/app_text_styles.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String seeAll;
  final VoidCallback? onSeeAll;

  const SectionHeader({
    required this.seeAll,
    super.key,
    required this.title,
    this.onSeeAll,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: AppSizes.space10,vertical: AppSizes.space10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: AppTextStyles.sectionTitle),
          GestureDetector(
            onTap: onSeeAll,
            child: Text(seeAll, style: AppTextStyles.seeAll),
          ),
        ],
      ),
    );
  }
}
