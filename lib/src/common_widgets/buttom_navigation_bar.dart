import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ptc_test/src/feature/cart/presentation/screen.dart';
import 'package:ptc_test/src/feature/explore/presentation/screen.dart';

import '../feature/not_implemented/presentation/screen.dart';

class BottomNaviationBar extends StatelessWidget {
  final int currentIndex;

  const BottomNaviationBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // backgroundColor: Colors.blue,
      currentIndex: currentIndex,
      onTap: (index) {
        if (index == 1) {
          Navigator.of(context).pushReplacementNamed(
            ExploreScreen.route,
          );
          return;
        }
        if (index == 2) {
          Navigator.of(context).pushReplacementNamed(
            CartScreen.route,
          );
          return;
        }
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => NotImplemented(
                  index: index,
                )));
      },
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.shop_outlined, color: Color(0xff181725)),
            label: 'shop'),
        BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined, color: Color(0xff181725)),
            label: 'Explore'),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Color(0xff181725)),
            label: 'Cart'),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline, color: Color(0xff181725)),
            label: 'Favorite'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color(0xff181725)),
            label: 'Profile Account')
      ],
    );
  }
}
