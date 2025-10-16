import 'package:flutter/material.dart';
import 'package:readmark/layout/login_button_layout.dart';
import 'package:readmark/layout/login_layout.dart';
import 'package:readmark/layout/text_button_layout.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Spacer(flex: 10),
            ReadmarkImg(),

            Spacer(flex: 10),

            InfoText(onPressed: nextPagebutton),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }

  nextPagebutton() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return LoginLayout();
        },
      ),
    );
  }
}

class ReadmarkImg extends StatelessWidget {
  const ReadmarkImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/img/readmark.png');
  }
}

class InfoText extends StatelessWidget {
  final VoidCallback onPressed;

  const InfoText({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("아직 계정이 없으신가요?"),
            SizedBox(width: 8),
            TextButtonLayout(acting: "회원가입"),
          ],
        ),
        SizedBox(height: 4),
        LoginButtonLayout(acting: "로그인하기", onPressed: onPressed),
      ],
    );
  }
}
