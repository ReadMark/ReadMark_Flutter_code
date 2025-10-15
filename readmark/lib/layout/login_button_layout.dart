import 'package:flutter/material.dart';

class LoginButtonLayout extends StatelessWidget {
  final acting;

  const LoginButtonLayout({super.key, required this.acting});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},

          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: Color(0xFFb4b4b4),
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 17),
          ),
          child: Text(acting),
        ),
      ),
    );
  }
}
