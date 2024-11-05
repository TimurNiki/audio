import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/feature/auth/widgets/auth_widgets_import.dart';
import 'package:myapp/feature/home/widgets/home_widgets_import.dart';
import 'package:myapp/feature/search/pages/search_page.dart';
import 'package:myapp/product/core/constants/app_constants_import.dart';
import 'package:myapp/product/model/products_model/featured_products.dart';

class HomePageDemo extends StatefulWidget {
  const HomePageDemo({super.key});

  @override
  State<HomePageDemo> createState() => _HomePageDemoState();
}

class _HomePageDemoState extends State<HomePageDemo> {
  final Set<String> _selectedMoods = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, X",
                style: GoogleFonts.dmSans(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 5),
              Text(AppStrings.whatAreYouLookingForToday,
                  style: AppTextStyles.dmSansBold),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SearchPage()),
                  );
                },
                child: const AbsorbPointer(
                  child: CustomTextField(
                    borderColor: Colors.grey,
                    hintText: AppStrings.searchHeadphone,
                    isPassword: false,
                    // iconPath: "assets/icons/search.svg",
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    CategorySelector(
                      onCategorySelected: (value) {},
                      selectedCategories: _selectedMoods,
                    ),
                    const SizedBox(height: 20),
                    // Banner Widget
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                      ),
                      child: const HomeBanner(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(AppStrings.featuredProducts,
                            style: AppTextStyles.dmSansRegular),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            AppStrings.seeAll,
                            style: AppTextStyles.dmSansRegular.copyWith(
                              color: AppColors.greyDark,
                            ),
                          ),
                        ),
                      ],
                    ),
                    FeaturedProducts()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Container(
//         width: 150,
//         padding: EdgeInsets.all(12),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Icon(
//               image,
//               size: 80, // Placeholder icon size, adjust as needed
//             ),
//             SizedBox(height: 16),
//             Text(
//               name,
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 8),
//             Text(
//               price,
//               style: TextStyle(fontSize: 14, color: Colors.grey[700]),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }