import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  // final bool isFormValid;
  // final VoidCallback onPressed;
  final String buttonText;

  const CustomButton({super.key, required this.buttonText
      // required this.isFormValid,required this.buttonText,
      // required this.onPressed, required this.buttonText,
      });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          // onPressed: isFormValid ? onPressed : null,
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              // backgroundColor: isFormValid ? Colors.orange : Colors.grey,
              backgroundColor:
                  const Color(0xFF0ACF83), // Use your specified color
              padding: const EdgeInsets.symmetric(
                  vertical: 10), // Adjust height if needed
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    15), // Match the text fields' border radius
              )),
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
