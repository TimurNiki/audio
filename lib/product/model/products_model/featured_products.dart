import 'package:flutter/material.dart';

import '../../../feature/home/widgets/product_card.dart';

class FeaturedProducts extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'TMA-2 HD Wireless',
      'price': 'USD 350',
      'image':
          "assets/images/headphone.png", // Placeholder icon, replace with actual image
    },
    {
      'name': 'TMA-2 HD Wireless',
      'price': 'USD 350',
      'image':
          "assets/images/headphone.png", // Placeholder icon, replace with actual image
    },
    {
      'name': 'TMA-2 HD Wireless',
      'price': 'USD 350',
      'image':
          "assets/images/headphone.png", // Placeholder icon, replace with actual image
    },
    {
      'name': 'TMA-2 HD Wireless',
      'price': 'USD 350',
      'image':
          "assets/images/headphone.png", // Placeholder icon, replace with actual image
    },
    {
      'name': 'TMA-2 HD Wireless',
      'price': 'USD 350',
      'image':
          "assets/images/headphone.png", // Placeholder icon, replace with actual image
    },
  ];

   FeaturedProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // Adjust height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: ProductCard(
              name: products[index]['name'],
              price: products[index]['price'],
              imagePath: products[index]['image'],
            ),
          );
        },
      ),
    );
  }
}
