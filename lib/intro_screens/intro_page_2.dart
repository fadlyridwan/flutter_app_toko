import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('images/online_shop_2.png'),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "DISKON HINGGA 80%",
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
            "Dapatkan potongan harga spesial (up to 80 persen) dengan belanja minimal Rp500 ribu setiap harinya!",
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
