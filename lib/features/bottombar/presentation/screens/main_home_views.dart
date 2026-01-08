import 'package:flutter/material.dart';

import '../../../home/presentation/screens/home_screens.dart';
import '../widget/home_bottombar.dart';


// مؤقتًا اعمل صفحات بسيطة لحد ما تبنيها
class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Favorites')));
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Profile')));
}

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Categories')));
}

class MainLayoutScreen extends StatefulWidget {
  const MainLayoutScreen({super.key});

  @override
  State<MainLayoutScreen> createState() => _MainLayoutScreenState();
}

class _MainLayoutScreenState extends State<MainLayoutScreen> {
  int _currentIndex = 0;

  late final List<Widget> _pages =  [
    HomeScreen(),
    CategoriesScreen(),
    FavoritesScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // مهم: ما تعملش Scaffold جوه كل صفحة لو هتستخدم AppBar مشتركة، لكن عادي مؤقتًا
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: HomeBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        onCenterTap: () {
          // هنا تفتح Cart Screen
          // Navigator.pushNamed(context, Routes.cart);
        },
      ),
    );
  }
}
