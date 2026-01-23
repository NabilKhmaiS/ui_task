import 'package:flutter/material.dart';
import 'package:ui_task/core/utils/app_colors.dart';
import 'package:ui_task/core/utils/app_text.dart';
import 'package:ui_task/core/utils/app_text_styles.dart';
import '../widget/address_selector.dart';
import '../widget/card_item/card_items.dart';
import '../widget/card_item/cart_item_list.dart';
class PagesCart extends StatelessWidget {
  const PagesCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              elevation: 0,
              backgroundColor: Colors.white,
              centerTitle: true,
              title:  Text(
                AppTexts.Carrito,
                style : AppTextStyles.Carrito
              ),
            ),

            SliverToBoxAdapter(
              child: AddressSelector(),
            ),

            CartItemList()









          ],
        ),
      ),
    );
  }
}



