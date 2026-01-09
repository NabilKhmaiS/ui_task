import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_size.dart';
import '../../../../core/utils/app_text.dart';
import '../../../../core/utils/app_text_styles.dart';
import 'clippers/inward_curve_clipper.dart';

class DetailsAppBar extends StatelessWidget {
 final String imagepath;
  const DetailsAppBar({
    super.key, required this.imagepath,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: AppSizes.appBarHeight,
      pinned: true,
      backgroundColor: Colors.black,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_new, color: AppColor.white),
        onPressed: () => Navigator.pop(context),
      ),
      title: Text(AppTexts.hamburguesaEspecial, style: AppTextStyles.appBarTitle),
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(imagepath,fit: BoxFit.cover,),
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipPath(
                clipper: const InwardCurveClipper(),
                child: Container(
                  height: AppSizes.curveHeight,
                  color: AppColors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
