import 'package:flutter/material.dart';

class TextButtonLayout extends StatelessWidget {
  final acting;

  const TextButtonLayout({super.key, required this.acting});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          if (acting == "돌아가기") {
            Navigator.of(context).pop();
          } else if (acting == "회원가입") {}
        },
        child: Text(acting, style: TextStyle(fontWeight: FontWeight.w700)),
      ),
    );
  }
}
