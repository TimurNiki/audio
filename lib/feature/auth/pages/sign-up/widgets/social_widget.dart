
import 'package:flutter/material.dart';

class SocialWidget extends StatelessWidget {
  const SocialWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
