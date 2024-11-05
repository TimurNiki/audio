import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final bool isPassword;
  final String? iconPath;
  final Color? borderColor;

  const CustomTextField({
    super.key,
    this.controller,
    this.iconPath,
    required this.hintText,
    required this.isPassword,
    this.borderColor, // borderColor parametresini kullanıma ekleyin
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          prefixIcon: iconPath != null
              ? Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(
                    iconPath!,
                    width: 5,
                    height: 5,
                    color: Colors.grey,
                  ),
                )
              : null,
          hintText: hintText,
          labelStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: borderColor ?? Colors.transparent,
              ) // Dışarıdan gelen borderColor

              ),
        ),
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
