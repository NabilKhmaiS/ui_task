import 'package:flutter/cupertino.dart';

class SummaryRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isTotal;

  const SummaryRow({
    required this.label,
    required this.value,
    this.isTotal = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: isTotal ? const Color(0xFF5B2EFF) : const Color(0xFF6B7280),
            fontWeight: isTotal ? FontWeight.w700 : FontWeight.w500,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: isTotal ? 14 : 12,
            fontWeight: FontWeight.w700,
            color: isTotal ? const Color(0xFF5B2EFF) : const Color(0xFF1F2937),
          ),
        ),
      ],
    );
  }
}
