import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductItem extends StatelessWidget {
  final String name;
  final String price;
  final String? imageUrl; // Now represents the asset image path

  const ProductItem({
    super.key,
    required this.name,
    required this.price,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        imageUrl != null
            ? Image.asset(
                imageUrl!, // Use asset image path
                height: 100, // Set the desired height
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return _buildPlaceholderImage(); // Optional placeholder for errors
                },
              )
            : _buildPlaceholderImage(), // Placeholder if imageUrl is null
        const SizedBox(height: 8),
        Text(
          name,
          style: GoogleFonts.dmSans(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          price,
          style: GoogleFonts.dmSans(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.green,
          ),
        ),
      ],
    );
  }

  Widget _buildPlaceholderImage() {
    return Container(
      height: 100,
      color: Colors.grey[300], // Placeholder icon
      alignment: Alignment.center, // Placeholder color
      child: const Icon(Icons.image),
    );
  }
}
