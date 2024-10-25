import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/feature/auth/widgets/auth_widgets_import.dart';
import 'package:myapp/feature/search/pages/search_page.dart';
import 'package:myapp/product/core/constants/app_constants.dart';
import '../widgets/home_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Padding(
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
            const SizedBox(
              height: 5,
            ),
            Text(
              AppStrings.whatAreYouLookingForToday,
              style: GoogleFonts.dmSans(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
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
                  iconPath: "assets/icons/search.svg",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
