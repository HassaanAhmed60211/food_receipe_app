import 'package:flutter/material.dart';

Widget signUpText() {
  return const Text.rich(
    TextSpan(
      children: [
        TextSpan(
          text: 'Don’t have an account? ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
        TextSpan(
          text: 'Sign up',
          style: TextStyle(
            color: Color(0xFFFF9B00),
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
      ],
    ),
  );
}
