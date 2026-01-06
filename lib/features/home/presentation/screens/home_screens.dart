import 'package:flutter/material.dart';

import '../../../../core/utils/app_text.dart';
import '../widget/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
        title: AppTexts.inicio,
        onNotificationTap: () {},
      ),
      body: const SizedBox(),
    );
  }
}
