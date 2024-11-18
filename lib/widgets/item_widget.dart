import 'package:flutter/material.dart';
import 'package:flutter_app_toko/detail_screen.dart';
import 'package:flutter_app_toko/model/list_barang.dart';

class ItemWidget extends StatelessWidget {
  // final int gridCount;

  const ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.5),
      child: GridView.count(
        childAspectRatio: 0.62,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        shrinkWrap: true,
        children: namaBarangList.map((items) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailScreen(items: items);
                  },
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 34, 227, 237),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          '50%',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Image.asset(
                      items.imageAsset,
                      height: 120,
                      width: 120,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 8),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        items.name,
                        style: const TextStyle(
                            fontSize: 15,
                            color: Color(0xFF4C53A5),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 34, 227, 237),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          items.pengiriman,
                          style: const TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Rp.',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF4C53A5),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          items.harga,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Color(0xFF4C53A5),
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          ',-',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF4C53A5),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
