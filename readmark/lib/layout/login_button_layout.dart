import 'package:flutter/material.dart';

class LoginButtonLayout extends StatelessWidget {
  final acting;
  final VoidCallback onPressed;

  const LoginButtonLayout({
    super.key,
    required this.acting,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 54,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,

          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: Color(0xFFF9B4B4),
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 17),
          ),
          child: Text(acting),
        ),
      ),
    );
  }
}
