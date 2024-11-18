import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_toko/cart_screen.dart';
import 'package:flutter_app_toko/widgets/home_app_bar.dart';
import 'package:flutter_app_toko/widgets/item_widget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: ListView(
        children: [
          Container(
            // height: 500,
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search here...",
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.search,
                        size: 27,
                        color: Color(0xFF4C53A5),
                      )
                    ],
                  ),
                ),
                const ItemWidget(
                    // gridCount: 3,
                    ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {
          if (index == 0) {
            print("tapped on calls");
          }
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const CartScreen();
                },
              ),
            );
          }
          if (index == 2) {
            print("tapped on chats");
          }
        },
        height: 70,
        color: const Color.fromARGB(255, 34, 227, 237),
        items: const [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            CupertinoIcons.cart_fill,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
