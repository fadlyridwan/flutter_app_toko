import 'package:flutter/material.dart';

class NamaBarang {
  String name;
  String harga;
  String description;
  String diskon;
  String stok;
  String pengiriman;
  final Color color;
  String imageAsset;

  NamaBarang({
    required this.name,
    required this.harga,
    required this.description,
    required this.diskon,
    required this.stok,
    required this.pengiriman,
    required this.color,
    required this.imageAsset,
  });
}

List<NamaBarang> namaBarangList = [
  NamaBarang(
    name: 'Tas Wanita Biru Metalik 708',
    harga: '974.300',
    description: dummyText,
    diskon: '50',
    stok: '20',
    pengiriman: 'COD',
    color: const Color(0xFF3D82AE),
    imageAsset: 'images/bag_1.png',
  ),
  NamaBarang(
    name: 'Tas Wanita Coklat Simple 504',
    harga: '349.500',
    description: dummyText,
    diskon: '-50',
    stok: '20',
    pengiriman: 'COD',
    color: const Color(0xFFD3A984),
    imageAsset: 'images/bag_2.png',
  ),
  NamaBarang(
    name: 'Tas Wanita Hitam 873',
    harga: '562.000',
    description: dummyText,
    diskon: '-50',
    stok: '20',
    pengiriman: 'COD',
    color: const Color(0xFF989493),
    imageAsset: 'images/bag_3.png',
  ),
  NamaBarang(
    name: 'Tas Wanita Coklat Berlian 342',
    harga: '974.300',
    description: dummyText,
    diskon: '50',
    stok: '20',
    pengiriman: 'COD',
    color: const Color(0xFFE6B398),
    imageAsset: 'images/bag_4.png',
  ),
  NamaBarang(
    name: 'Tas Wanita Merah Mawar Metalik 703',
    harga: '974.300',
    description: dummyText,
    diskon: '50',
    stok: '20',
    pengiriman: 'COD',
    color: const Color(0xFFFB7883),
    imageAsset: 'images/bag_5.png',
  ),
  NamaBarang(
    name: 'Tas Laptop Hitam Slempang Pro 990',
    harga: '974.300',
    description: dummyText,
    diskon: '50',
    stok: '20',
    pengiriman: 'COD',
    color: const Color(0xFFAEAEAE),
    imageAsset: 'images/bag_6.png',
  ),
  NamaBarang(
    name: 'Tas Laptop Hitam Slempang Slim 980',
    harga: '974.300',
    description: dummyText,
    diskon: '50',
    stok: '20',
    pengiriman: 'COD',
    color: const Color.fromARGB(255, 100, 96, 96),
    imageAsset: 'images/bag_7.png',
  ),
  NamaBarang(
    name: 'Tas Wanita Hitam Manik Kulit 760',
    harga: '974.300',
    description: dummyText,
    diskon: '50',
    stok: '20',
    pengiriman: 'COD',
    color: const Color.fromARGB(255, 152, 132, 132),
    imageAsset: 'images/bag_8.png',
  ),
  NamaBarang(
    name: 'Tas Wanita Pink Cantik 160',
    harga: '974.300',
    description: dummyText,
    diskon: '50',
    stok: '20',
    pengiriman: 'COD',
    color: const Color.fromARGB(255, 244, 45, 168),
    imageAsset: 'images/bag_9.png',
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
