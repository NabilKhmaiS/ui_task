import 'package:flutter/material.dart';

import '../../../../core/utils/app_text.dart';
import '../widget/home_tap_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: HomeTopBar(),
              )

            ],
          ),
        ),
      ),
    );
  }
}
