import 'package:flutter/material.dart';
import '../../features/bottombar/presentation/screens/main_layout_screen.dart';
import '../../features/details/presentation/screen/details_screen.dart';
import '../../features/home/presentation/screens/home_screens.dart';
import '../routing/routes.dart';
import '../../features/splash/presentation/screens/splash_screen.dart';


class AppRouter {
 Route? generateRoute(RouteSettings settings) {
   switch (settings.name) {
     case AppRoutes.mainLayout :
       return MaterialPageRoute(builder: (context) => MainLayoutScreen(),);

     case AppRoutes.home :
       return MaterialPageRoute(builder: (context) => HomeScreen(),);

       case AppRoutes.splash :
       return MaterialPageRoute(builder: (context) => SplashScreen(),);

     case AppRoutes.details:
       return MaterialPageRoute(
         builder: (_) => const DetailsScreen(),
         settings: settings,
       );

   default:
   return MaterialPageRoute(
   builder: (_) => const Scaffold(
   body: Center(child: Text('Route not found')),
   ));


   }
 }


 PageRouteBuilder _createRoute(Widget page) {
   return PageRouteBuilder(
     transitionDuration: const Duration(milliseconds: 400),
     pageBuilder: (context, animation, secondaryAnimation) => page,
     transitionsBuilder: (context, animation, secondaryAnimation, child) {
       return FadeTransition(
         opacity: animation,
         child: child,
       );
     },
   );
 }
}







