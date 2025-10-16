import 'package:flutter/material.dart';
import 'package:readmark/layout/login_button_layout.dart';
import 'package:readmark/layout/text_button_layout.dart';
import 'package:readmark/layout/text_feild.dart';

class LoginLayout extends StatelessWidget {
  const LoginLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("d"),
              TitleText(acting: "이름을 입력하시오."),
              TextFeild(acting: "성명 입력"),
              TextButtonLayout(acting: "돌아가기"),
              LoginButtonLayout(acting: "다음", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
