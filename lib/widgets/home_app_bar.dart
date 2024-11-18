import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_app_toko/cart_screen.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(top: 25),
      child: Row(
        children: [
          const Icon(
            Icons.sort,
            size: 30,
            color: Color.fromARGB(255, 34, 227, 237),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              '',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 34, 227, 237),
              ),
            ),
          ),
          const Spacer(),
          badges.Badge(
            badgeStyle: const badges.BadgeStyle(
                badgeColor: Colors.red, padding: EdgeInsets.all(7)),
            badgeContent: const Text(
              '3',
              style: TextStyle(color: Colors.white),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const CartScreen();
                    },
                  ),
                );
              },
              child: const Icon(
                Icons.shopping_bag_outlined,
                size: 32,
                color: Color.fromARGB(255, 34, 227, 237),
              ),
            ),
          )
        ],
      ),
    );
  }
}
