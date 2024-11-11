import 'package:flutter/material.dart';
import 'sign_up_body_top.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/audio-onboard.jfif"),
          fit: BoxFit.fill,
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SignUpBodyTop(),
      ),
    );
  }
}
