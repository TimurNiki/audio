import 'package:flutter/material.dart';
import 'package:myapp/product/core/constants/app_constants_import.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String price;
  final String imagePath;

  const ProductCard(
      {required this.name, required this.price, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2343005736.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2931541504.
        decoration: BoxDecoration(
          //WHITELIGHT
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(16),
        ),
        width: 150,
        padding: const EdgeInsets.all(8), // Reduced padding slightly
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize:
              MainAxisSize.min, // Allows the column to shrink if needed
          children: [
            GestureDetector(
              onTap: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Center(
                  child: Image.asset(
                    imagePath,
                    height: 125, // Adjust height as needed
                    width: 125, // Adjust width as needed
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              name,
              style: AppTextStyles
                  .dmSansRegular14, // Add ellipsis if text is too long
            ),
            const SizedBox(height: 4),
            Text(
              price,
              style: AppTextStyles.dmSansSmall,
            ),
          ],
        ),
      ),
    );
  }
}
