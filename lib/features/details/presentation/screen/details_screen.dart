import 'package:flutter/material.dart';

import '../widget/bottom_order_bar.dart';
import '../widget/details_app_bar.dart';
import '../widget/details_content.dart';


class DetailsScreen extends StatefulWidget {
  DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  String selectedImage = 'assets/images/pablo.png';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: Stack(
          children: [
            CustomScrollView(
              slivers: [
                DetailsAppBar(imagepath: selectedImage),
                DetailsContent(
                  onIngredientTap: (img) {
                setState(() {
                  selectedImage = img;
                });
                  },
                ),
              ],
            ),

            Positioned(
              left: 16,
              right: 16,
              bottom: 10,
              child: SafeArea(
                top: false,
                child: BottomOrderBar(),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
