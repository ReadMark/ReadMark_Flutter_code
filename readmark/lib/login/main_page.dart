import 'package:flutter/material.dart';
import 'package:readmark/component/next_button_layout.dart';
import 'package:readmark/login/login_main_page.dart';
import 'package:readmark/login/sign_main_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _LoginMainPageState();
}

class _LoginMainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 1),
            Image.asset("assets/img/readmark.png"),

            Spacer(flex: 1),
            InfoText(onPressed: signStart),
            nextButton(onPressed: loginStart),
            SizedBox(height: 52),
          ],
        ),
      ),
    );
  }

  loginStart() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return LoginMainPage();
        },
      ),
    );
  }

  signStart() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return SignMainPage();
        },
      ),
    );
  }
}

class InfoText extends StatelessWidget {
  final VoidCallback onPressed;

  const InfoText({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "아직 계정이 없으신가요? ",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Color(0xFFB4B4B4),
          ),
        ),
        GestureDetector(
          onTap: onPressed,
          child: Text("회원가입", style: TextStyle(fontWeight: FontWeight.w800)),
        ),
      ],
    );
  }
}

class nextButton extends StatelessWidget {
  final VoidCallback onPressed;

  const nextButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return NextButtonLayout(onPressed: onPressed, acting: "로그인");
  }
}
