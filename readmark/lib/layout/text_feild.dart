import 'package:flutter/material.dart';

class TextFeild extends StatelessWidget {
  final acting;

  const TextFeild({super.key, required this.acting});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: acting,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  final acting;

  const TitleText({super.key, required this.acting});

  @override
  Widget build(BuildContext context) {
    return Text(
      acting,
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
      textAlign: TextAlign.left,
    );
  }
}
