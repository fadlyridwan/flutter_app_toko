import 'package:flutter/material.dart';
import 'package:flutter_app_toko/widgets/cart_app_bar.dart';

import 'widgets/cart_item_list.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const CartAppBar(),
          Container(
            height: 700,
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
                color: Color(0xFFEDECF2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                )),
            child: const Column(
              children: [
                CartItemList(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
