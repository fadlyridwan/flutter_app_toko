import 'package:flutter/material.dart';

class DetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DetailAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Product',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
          const Spacer(),
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Icon(
              Icons.favorite,
              size: 30,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
