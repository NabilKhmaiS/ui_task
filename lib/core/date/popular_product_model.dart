import '../../generated/assets.dart';
import '../utils/app_text.dart';

class PopularProductModel {
  final String title;
  final String subtitle;
  final String imageAsset;
  final double price;
  final bool isFavorite;

  const PopularProductModel({
    required this.title,
    required this.subtitle,
    required this.imageAsset,
    required this.price,
    this.isFavorite = false,
  });
}


class HomePopularProducts {

  static final List<PopularProductModel> item =[

    PopularProductModel(
      title: AppTexts.pizzaClasica,
      imageAsset: Assets.pazze, // عدّل للأصل بتاع صورة المنتج
      price: 12.5,
      subtitle: AppTexts.pizzaClasicaSubtitle,
    ),
    PopularProductModel(
      title: AppTexts.burger,
      imageAsset: Assets.burger,
      price: 9.99,
      subtitle: 'Burger',
    ),
    PopularProductModel(
      title: 'Tacos',
      imageAsset: Assets.pazze,
      price: 7.25,
      subtitle: 'Tacos',
    ),
    
    
    
  ];



}