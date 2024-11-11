import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../product/core/constants/app_constants_import.dart';
import '../../../widgets/auth_widgets_import.dart';
import '../../sign-up/sign_up_page.dart';

class SignInBody extends StatefulWidget {
  SignInBody({
    super.key,
  });

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  State<SignInBody> createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              MainAxisAlignment.center, // Center the content vertically
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
            const SizedBox(height: 120), // Space between title and fields
            CustomTextField(
              controller: widget._emailController,
              iconPath: 'assets/icons/mail.svg',
              hintText: AppStrings.email,
              isPassword: false,
            ),
            const SizedBox(height: 20), // Space between email and password
            CustomTextField(
              controller: widget._passwordController,
              iconPath: 'assets/icons/lock.svg',
              hintText: AppStrings.password,
              isPassword: true,
            ),
            const SizedBox(height: 5),
            TextButton(
              onPressed: () {},
              child: Text(
                AppStrings.forgotPassword,
                style: GoogleFonts.dmSans(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomButton(
                buttonText: AppStrings.signIn,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.didntHaveAnyAccount,
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
                          builder: (context) => const SignUpPage()),
                    );
                  },
                  child: Text(
                    AppStrings.signUpHere,
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
    );
  }
}
