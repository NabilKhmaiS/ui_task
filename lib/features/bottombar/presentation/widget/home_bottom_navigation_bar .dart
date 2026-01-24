import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_size.dart';

class HomeBottomBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  final VoidCallback onCenterTap;

  const HomeBottomBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.onCenterTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.bottomBarHeight,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            left: 10,
            bottom: 10,
            child: SideContainer(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _NavIcon(
                    icon: Icons.home_outlined,
                    isActive: currentIndex == 0,
                    onTap: () => onTap(0),
                  ),
                  const _VLine(),
                  _NavIcon(
                    icon: Icons.grid_view_rounded,
                    isActive: currentIndex == 1,
                    onTap: () => onTap(1),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            right: 18,
            bottom: 15,
            child: SideContainer(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _NavIcon(
                    icon: Icons.favorite_border,
                    isActive: currentIndex == 2,
                    onTap: () => onTap(2),
                  ),_NavIcon(
                    icon: Icons.person_outline,
                    isActive: currentIndex == 2,
                    onTap: () => onTap(3),
                  ),

                ],
              ),
            ),
          ),

          Positioned(
            left: AppSizes.space140,
            bottom: AppSizes.centerBtnBottom,
            child: GestureDetector(
              onTap: onCenterTap,
              child: Container(
                width: AppSizes.centerBtnSize,
                height: AppSizes.centerBtnSize,
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x26000000),
                      blurRadius: 12,
                      offset: Offset(0, 6),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SideContainer extends StatelessWidget {
  const SideContainer({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.sideContainerHeight,
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.sidePaddingH),
      decoration: BoxDecoration(
        color: AppColors.bottomBarBg,

        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20),
            topRight: Radius.circular(20)
        ),

        border: Border.all(
          color: AppColors.bottomBarBorder,
          width: 1,
        ),

        boxShadow: const [
          BoxShadow(
            color: AppColors.bottomBarShadow,
            blurRadius: 9,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Center(child: child),
    );
  }
}

class _NavIcon extends StatelessWidget {
  const _NavIcon({
    required this.icon,
    required this.isActive,
    required this.onTap,
  });

  final IconData icon;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: AppSizes.navIconBox,
        height: AppSizes.navIconBox,
        child: Center(
          child: Icon(
            icon,
            size: AppSizes.navIconSize,
            color: isActive ? AppColors.navIconActive : AppColors.navIconInactive,
          ),
        ),
      ),
    );
  }
}

class _VLine extends StatelessWidget {
  const _VLine();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.dividerWidth,
      height: AppSizes.dividerHeight,
      margin: const EdgeInsets.symmetric(horizontal: AppSizes.dividerMarginH),
      color: AppColors.bottomBarDivider,
    );
  }
}

class _ProfileIcon extends StatelessWidget {
  const _ProfileIcon({
    required this.isActive,
    required this.onTap,
  });

  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 26,
        height: 26,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: isActive
              ? Border.all(color: AppColors.navIconActive, width: 2)
              : null,
          image: const DecorationImage(
            image: AssetImage('assets/images/avatar.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
