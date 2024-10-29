import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/feature/auth/widgets/auth_widgets_import.dart';
import 'package:myapp/feature/search/pages/search_page.dart';
import 'package:myapp/product/core/constants/app_strings.dart';
import '../feature/home/widgets/category_selector.dart';
import '../feature/home/widgets/home_appbar.dart';
import '../feature/home/widgets/home_banner.dart';
import '../feature/home/widgets/product_item.dart';
import '../product/model/products_model/products_model.dart';

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
              Text(
                AppStrings.whatAreYouLookingForToday,
                style: GoogleFonts.dmSans(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchPage()),
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
                        Text(
                          "Featured Products ",
                          style: GoogleFonts.dmSans(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text("See all"),
                        ),
                       
                      ],
                      
                    ),
                    
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
