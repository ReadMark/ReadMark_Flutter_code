import 'package:flutter/material.dart';
import 'package:readmark/login/login_page.dart';

class LoginMainPage extends StatefulWidget {
  const LoginMainPage({super.key});

  @override
  State<LoginMainPage> createState() => _LoginMainPageState();
}

class _LoginMainPageState extends State<LoginMainPage> {
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
            infoText(),
            nextButton(onPressed: LoginStart),
            SizedBox(height: 52),
          ],
        ),
      ),
    );
  }

  LoginStart() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return LoginPage();
        },
      ),
    );
  }
}

class infoText extends StatelessWidget {
  const infoText({super.key});

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
          onTap: () {},
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
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 4),
      child: SizedBox(
        width: double.infinity,
        height: 52,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text("로그인", style: TextStyle(color: Colors.white)),
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
