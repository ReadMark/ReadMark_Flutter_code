import 'package:flutter/material.dart';

class NextButtonLayout extends StatelessWidget {
  final VoidCallback onPressed;
  final acting;

  const NextButtonLayout({
    super.key,
    required this.onPressed,
    required this.acting,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 4),
      child: SizedBox(
        width: double.infinity,
        height: 52,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(acting, style: TextStyle(color: Colors.white)),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFFF6969),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}
