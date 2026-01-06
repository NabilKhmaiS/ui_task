import '../../generated/assets.dart';
import '../utils/app_text.dart';

class RecommendedItemModel {
  final String title;
  final String subtitle;
  final String imageAsset;
  final double price;
  final bool isFavorite;

  const RecommendedItemModel({
    required this.title,
    required this.subtitle,
    required this.imageAsset,
    required this.price,
    this.isFavorite = false,
  });
}




class HomeRecommendedItems {

  static final List<RecommendedItemModel> items = [
    RecommendedItemModel(
      title: AppTexts.malteadasTropicales,
      subtitle: AppTexts.recomendadosSubtitle,
      imageAsset: Assets.pngocean,
      price: 12.58,
      isFavorite: true,
    ),
    RecommendedItemModel(
      title: 'Jugo de naranja',
      subtitle: AppTexts.recomendadosSubtitle,
      imageAsset: Assets.pngocean,
      price: 20.00,
      isFavorite: false,
    ),
  ];
}

