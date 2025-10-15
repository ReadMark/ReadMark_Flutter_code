import 'package:flutter/material.dart';
import 'package:readmark/layout/login_button_layout.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Spacer(flex: 10),
            Image.asset('assets/img/readmark.png'),

            Spacer(flex: 10),

            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("아직 계정이 없으신가요?"),
                    TextButton(onPressed: () {}, child: Text("회원가입")),
                  ],
                ),
                LoginButtonLayout(acting: "로그인하기"),
              ],
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
