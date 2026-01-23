import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_task/features/cart/presentation/widget/card_item/product_avatar.dart';
import 'package:ui_task/features/cart/presentation/widget/card_item/qty_button.dart';

import 'delete_button.dart';
class CartItemCard extends StatefulWidget {
  @override
  State<CartItemCard> createState() => _CartItemCardState();
}


class _CartItemCardState extends State<CartItemCard> {
    int qte = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 18,
            offset: Offset(0, 8),
          ),
        ],
      ),
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
            "Big Burger Queso",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Color(0xFF153E73),
            ),
          ),

          const SizedBox(height: 6),

          const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              color: Color(0xFF6B7280),
              height: 1.2,
            ),
          ),

          const SizedBox(height: 12),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              QtyButton(icon: Icons.remove , selected: true,onTap: (){
                 setState(() {
                   if(qte > 1 ){
                     qte--;
                   }
                 });
              },),
              const SizedBox(width: 4),
               Text(
                qte.toString(),
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
               SizedBox(width: 4),
              QtyButton(icon: Icons.add ,selected: false,onTap: (){
                setState(() {
                  qte ++;
                });
              },),
              const SizedBox(width: 14),
              Text(
                "\$${qte * 20}",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF20D0C4),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

