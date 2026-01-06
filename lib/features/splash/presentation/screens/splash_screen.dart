import 'package:flutter/material.dart';
import '../../../../core/routing/routes.dart';
import 'dart:async';
import '../../../../core/extensions/navigation_extensions.dart';
import '../widget/splash_content.dart';


class SplashScreen extends StatefulWidget {
 const SplashScreen({super.key});


 @override
 State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
 @override
 void initState() {
   super.initState();
   Timer(const Duration(seconds: 2), () {
     context.pushNamed(Routes.onBoardingScreen);
   });
 }


 @override
 Widget build(BuildContext context) {
   return  Scaffold(
     body: SplashContent(),
   );
 }
}


