import 'package:flutter/material.dart';
import 'package:grocery_design/src/presentation/views/home_view/home_view.dart';
import 'package:grocery_design/src/presentation/views/profile_view/profile_view.dart';
import 'package:grocery_design/src/presentation/views/qrcode_view/qrcode_view.dart';
import 'package:grocery_design/src/presentation/widgets/custom_tab_bar/custom_tab_bar.dart';

import '../../views/products_view/products_view.dart';

class CustomBottomNav extends StatefulWidget {
  const CustomBottomNav({super.key});

  static String id = 'CustomBottomNav';

  @override
  State<CustomBottomNav> createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  int _selectedIndex = 0;

  List<Widget> tabItems = [
    const HomeView(),
    const QrScanView(),
    const ProductsView(),
    const ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabItems[_selectedIndex],
      bottomNavigationBar: CustomTabBar(
        selectedIndex: _selectedIndex,
        backgroundColor: const Color(0xFFC3D4FF),
        items: [
          CustomTabBarItem(
            icon: const Icon(Icons.home),
            title: const Text('Home'),
          ),
          CustomTabBarItem(
            icon: const Icon(
              Icons.qr_code_scanner_outlined,
            ),
            title: const Text('Qr Scanner'),
          ),
          CustomTabBarItem(
            icon: const Icon(
              Icons.shopping_bag_outlined,
            ),
            title: const Text('Products'),
          ),
          CustomTabBarItem(
            icon: const Icon(
              Icons.account_circle_outlined,
            ),
            title: const Text('Profile'),
          ),
        ],
        onItemSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
