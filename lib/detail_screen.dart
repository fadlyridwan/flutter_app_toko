import 'package:flutter/material.dart';
import 'package:flutter_app_toko/model/list_barang.dart';

class DetailScreen extends StatefulWidget {
  final NamaBarang Items;

  const DetailScreen({super.key, required this.Items});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [Text('Ini Detail')],
      ),
    );
  }
}
