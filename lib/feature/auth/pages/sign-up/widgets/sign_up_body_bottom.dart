import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../product/core/constants/app_constants_import.dart';
import '../../sign-in/pages/sign_in_page.dart';

class SignUpBodyBottom extends StatefulWidget {
  const SignUpBodyBottom({
    super.key,
  });

  @override
  State<SignUpBodyBottom> createState() => _SignUpBodyBottomState();
}

class _SignUpBodyBottomState extends State<SignUpBodyBottom> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
                builder: (context) => const SignInPage(),
              ),
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
    );
  }
}
