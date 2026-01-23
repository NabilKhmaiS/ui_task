import 'package:flutter/cupertino.dart';

import 'card_items.dart';

class CartItemList extends StatelessWidget {
  const CartItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return     SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 10),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
              (context, index) =>  CartItemCard(),
          childCount: 2,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 12,
          childAspectRatio: 0.60,       // النسبة (هتظبطها حسب الفيجما)
        ),
      ),
    );
  }
}
