import 'package:flutter/material.dart';
import 'package:flutter_app_toko/cart_screen.dart';
import 'package:flutter_app_toko/model/list_barang.dart';

class ItemButtonBar extends StatelessWidget {
  final NamaBarang items;
  const ItemButtonBar({super.key, required this.items});
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
        child: Container(
          height: 70,
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: items.color,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(0, 3))
              ]),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Text(
              'Tambah Keranjang',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17, color: Colors.black54),
            ),
          ),
        ),
      ),
    );
  }
}
