import 'package:flutter/material.dart';
import 'package:ui_task/core/utils/app_text.dart';
import 'package:ui_task/core/utils/app_text_styles.dart';
import 'package:ui_task/features/cart/presentation/widget/card_item/product_avatar.dart';
import 'package:ui_task/features/cart/presentation/widget/card_item/qty_button.dart';

import 'delete_button.dart';

class CartItemCard extends StatefulWidget {
  const CartItemCard({super.key});

  @override
  State<CartItemCard> createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  int qte = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppTextStyles.cardPadding,
      decoration: AppTextStyles.cartCardDecoration,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: DeleteButton(onTap: () {}),
          ),

          const SizedBox(height: 6),
           ProductAvatar(),
          const SizedBox(height: 10),

          const Text(
            AppTexts.BigQueso,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.cardTitle,
          ),

          const SizedBox(height: 6),

          const Text(
            AppTexts.Lorem,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.cartItemDescription,
          ),

          const SizedBox(height: 12),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              QtyButton(
                icon: Icons.remove,
                selected: true,
                onTap: () {
                  setState(() {
                    if (qte > 1) qte--;
                  });
                },
              ),
              const SizedBox(width: 4),
              Text(
                qte.toString(),
                style: AppTextStyles.quantityText,
              ),
              const SizedBox(width: 4),
              QtyButton(
                icon: Icons.add,
                selected: false,
                onTap: () {
                  setState(() {
                    qte++;
                  });
                },
              ),
              const SizedBox(width: 14),
              Text(
                "\$${qte * 20}",
                style: AppTextStyles.priceText,
              ),
            ],
          ),
        ],
      ),
    );
  }
}


