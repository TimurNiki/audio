import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...["TMA-2", "Modular", "Headphone"].map((text) {
                  return Text(
                    text,
                    style: GoogleFonts.dmSans(
                      fontSize: 22,
                      height: 30 / 22,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                }),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    // Shop now action
                  },
                  child: Text(
                    "Shop now ",
                    style: GoogleFonts.dmSans(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 150, // veya istediğin yükseklikte
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                        "assets/images/headphone.png"), // Buraya resim dosyanı ekle
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
