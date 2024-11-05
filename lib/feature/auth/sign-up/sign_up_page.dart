import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../product/core/constants/app_strings.dart';
import '../sign-in/sign_in_page.dart';
import '../widgets/auth_widgets_import.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/audio-onboard.jfif"),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.start, // Center the content vertically
            children: [
              const SizedBox(height: 75), // Top spacing
              Text(
                AppStrings.audio,
                style: GoogleFonts.dmSans(
                  color: Colors.white,
                  fontSize: 54,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                AppStrings.sub,
                style: GoogleFonts.dmSans(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 100), // Space between title and fields
              CustomTextField(
                controller: _emailController,
                iconPath: 'assets/icons/mail.svg',
                hintText: AppStrings.email,
                isPassword: false,
              ),
              const SizedBox(height: 20), // Space between email and password
              CustomTextField(
                controller: _passwordController,
                iconPath: 'assets/icons/lock.svg',
                hintText: AppStrings.password,
                isPassword: true,
              ),

              const SizedBox(height: 15),
              const CustomButton(
                buttonText: AppStrings.signUp,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Image.asset(
                      "assets/images/apple_auth.png",
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    child: Image.asset(
                      "assets/images/facebook_auth.png",
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    child: Image.asset(
                      "assets/images/google_auth.png",
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.alreadyHaveAnAccount,
                    style: GoogleFonts.dmSans(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInPage()),
                      );
                    },
                    child: Text(
                      AppStrings.signInHere,
                      style: GoogleFonts.dmSans(
                        color: const Color(0xFF0ACF83),
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
