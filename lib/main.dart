import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'feature/auth/sign-up/sign_up_page.dart';
import 'feature/home/pages/home_page.dart';
import 'feature/search/pages/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(
      textTheme: GoogleFonts.dmSansTextTheme(),
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
