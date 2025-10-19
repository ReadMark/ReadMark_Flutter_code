import 'package:flutter/material.dart';
import 'package:readmark/layout/login_layout.dart';

class LoginFirstScreen extends StatelessWidget {
  const LoginFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginLayout(
      act: "이름을 입력하시오.",
      now: 1,
      buttonText: "다음",
      fieldiInput: "성명 입력",
    );
  }
}
