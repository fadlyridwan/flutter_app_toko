import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('images/online_shop_1.png'),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Mitra Setia Belanja Anda",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w400,
            fontFamily: 'Oxygen',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Salah satu kepastian yang membuat nyaman pelanggan, kami berani memberikan garansi 3 tahun, untuk produk elektronik yang kami jual!",
            style: TextStyle(
              color: Colors.black.withOpacity(0.6),
              fontSize: 16,
              fontWeight: FontWeight.w300,
              fontFamily: 'Staatliches',
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
