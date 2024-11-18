import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 130.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/online_shop_3.png'),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "GRATIS ONGKIR",
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
              "Promo khusus untuk bulan ini, pembelian minimal 100 ribu, nikmati potongan biaya pengiriman hingga Rp20 ribu",
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
      ),
    );
  }
}
