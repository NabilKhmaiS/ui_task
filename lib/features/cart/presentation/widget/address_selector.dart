import 'package:flutter/material.dart';
import 'package:ui_task/core/utils/app_text.dart';

import 'circle_add_button.dart';

class AddressSelector extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: _AddressChip(
              title: AppTexts.myHome,
              titles: AppTexts.addressExample,
              selected: true,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: _AddressChip(
              title: AppTexts.myWork,
              titles: AppTexts.addressExample,
              selected: false,
            ),
          ),
          const SizedBox(width: 10),
          CircleAddButton(onTap: () {}),
        ],
      ),
    );
  }

}
class _AddressChip extends StatelessWidget {
  final String title;
  final String titles;
  final bool selected;

  const _AddressChip({
    required this.title,
    required this.titles,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFF5117AC) : Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: selected ? Colors.transparent : const Color(0xFFE5E7EB),
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.home_rounded,
            size: 18,
            color: selected ? Colors.white : const Color(0xFF6B7280),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: selected ? Colors.white : const Color(0xFF1F2937),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  titles,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: selected
                        ? Colors.white.withOpacity(0.8)
                        : const Color(0xFF6B7280),
                  ),
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}
