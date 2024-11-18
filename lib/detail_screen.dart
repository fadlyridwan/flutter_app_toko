import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_toko/model/list_barang.dart';
import 'package:flutter_app_toko/widgets/detail_app_bar.dart';
import 'package:flutter_app_toko/widgets/item_button_bar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailScreen extends StatefulWidget {
  // const DetailScreen({super.key});
  final NamaBarang items;

  const DetailScreen({super.key, required this.items});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.items.color,
      body: ListView(
        children: [
          const DetailAppBar(),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Image.asset(
              widget.items.imageAsset,
              height: 300,
              fit: BoxFit.fitHeight,
            ),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 30,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50, bottom: 20),
                      child: Row(
                        children: [
                          Text(
                            widget.items.name,
                            style: TextStyle(
                                fontSize: 18,
                                color: widget.items.color,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            itemBuilder: (context, _) => const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                            onRatingUpdate: (index) {},
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 4),
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    number--;
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 10,
                                          offset: const Offset(0, 3),
                                        )
                                      ]),
                                  child: const Icon(
                                    CupertinoIcons.minus,
                                    size: 18,
                                  ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  number.toString(),
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: widget.items.color),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    number++;
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 10,
                                          offset: const Offset(0, 3),
                                        )
                                      ]),
                                  child: const Icon(
                                    CupertinoIcons.plus,
                                    size: 18,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        widget.items.description,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                            fontSize: 17, color: Colors.black54),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Row(
                        children: [
                          Text(
                            'Rp.',
                            style: TextStyle(
                                fontSize: 20,
                                color: widget.items.color,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            widget.items.harga,
                            style: TextStyle(
                                fontSize: 18,
                                color: widget.items.color,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ',-',
                            style: TextStyle(
                                fontSize: 18,
                                color: widget.items.color,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ItemButtonBar(
        items: widget.items,
      ),
    );
  }
}
