import 'package:flutter/cupertino.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          FlutterLogo(size: 100),
          SizedBox(height: 20),
          Text(
            "ui_task",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
