import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_task/core/utils/app_text.dart';
import 'package:ui_task/features/cart/presentation/widget/summary_row.dart';

import 'Ccheck_out_button.dart';

class CartBottomSummary extends StatelessWidget {
  const CartBottomSummary({super.key});

  @override
  Widget build(BuildContext context) {
    const double totalValue = 85.00;

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
      decoration: const BoxDecoration(
        color: Color(0xFFF9F9F9),
        boxShadow: [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 16,
            offset: Offset(0, -4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SummaryRow(
            label: AppTexts.subTotal,
            value: '\$${totalValue.toStringAsFixed(2)} ${AppTexts.usd}',
          ),
          const SizedBox(height: 6),
          SummaryRow(
            label: AppTexts.shipping,
            value: AppTexts.free,
          ),
          const Divider(height: 20),
          SummaryRow(
            label: AppTexts.total,
            value: '\$${totalValue.toStringAsFixed(2)} ${AppTexts.usd}',
            isTotal: true,
          ),
          const SizedBox(height: 16),
           CheckoutButton(),
        ],
      ),
    );
  }
}
