


class IngredienteModel {
  final String image;
  final String title;

  const IngredienteModel({
    required this.image,
    required this.title,
  });
}


class HomeIngredientes {
  static const List<IngredienteModel> items = [
    IngredienteModel(
      image: 'assets/images/hamburguesas.png',
      title: 'Hambur',
    ),



    IngredienteModel(
      image: 'assets/images/Live eta.png',
      title: 'Liveeta',
    ),
    IngredienteModel(
      image: 'assets/images/lechuga_1.png',
      title: 'Lechuga',
    ),
    IngredienteModel(
      image: 'assets/images/hamburguesas.png',
      title: 'Hambur',
    ),


    IngredienteModel(
      image: 'assets/images/onions.png',
      title: 'Onions',
    ),
  ];
}
