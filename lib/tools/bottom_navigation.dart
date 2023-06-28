import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:grocery_app/Pages/cart_page.dart';
import 'package:grocery_app/Pages/G_category.dart';
import 'package:grocery_app/Pages/Home.dart';

class ButtomN extends StatefulWidget {
  const ButtomN({super.key});

  @override
  State<ButtomN> createState() => _ButtomNState();
}

class _ButtomNState extends State<ButtomN> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [Category(), CartPage(), Home()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: GNav(
          backgroundColor: Colors.purple.shade300,
          selectedIndex: _selectedIndex,
          activeColor: Colors.white,
          color: Colors.white,
          gap: 8,
          tabs: const [
            GButton(
              icon: Icons.shopping_bag,
              text: 'Catogory',
            ),
            GButton(
              icon: Icons.shopping_cart,
              text: 'Cart',
            ),
            GButton(
              icon: Icons.account_box,
              text: 'Account',
            ),
          ],
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ));
  }
}
