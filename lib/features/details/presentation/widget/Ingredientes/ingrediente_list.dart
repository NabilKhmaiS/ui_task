import 'package:flutter/cupertino.dart';

import '../../../../../core/date/models/Ingredientes_model.dart';
import 'Ingredientes_item.dart';

class IngredienteList extends StatelessWidget {
  final Function(String image) onItemTap;

  const IngredienteList({
    super.key,
    required this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    final items = HomeIngredientes.items;

    return SizedBox(
      height: 170,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (_, __) => const SizedBox(width: 1),
        itemBuilder: (context, index) => IngredientesItem(
          model: items[index],
          onTap: () {
            onItemTap(items[index].image); // ⬅️ كده صح
          },
        ),
      ),
    );
  }
}
