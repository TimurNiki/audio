import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../product/core/constants/app_constants_import.dart';
import '../../../widgets/auth_widgets_import.dart';
import 'sign_up_body_bottom.dart';
import 'social_widget.dart';

class SignUpBodyTop extends StatefulWidget {
  const SignUpBodyTop({
    super.key,
  });

  @override
  State<SignUpBodyTop> createState() => _SignUpBodyTopState();
}

class _SignUpBodyTopState extends State<SignUpBodyTop> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
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
        const SocialWidget(),
        const SignUpBodyBottom(),
      ],
    );
  }
}
