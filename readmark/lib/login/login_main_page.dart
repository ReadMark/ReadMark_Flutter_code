import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:readmark/component/next_button_layout.dart';
import 'package:readmark/component/text_input_field.dart';
import 'package:readmark/login/sign_main_page.dart';
import 'package:readmark/main_page/home_screen.dart';

class LoginMainPage extends StatefulWidget {
  const LoginMainPage({super.key});

  @override
  State<LoginMainPage> createState() => _LoginMainPageState();
}

class _LoginMainPageState extends State<LoginMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InfoText(),

          UsetInfoInput(act: "아이디", action: "아이디를 입려해주세요."),
          UsetInfoInput(act: "비밀번호", action: "비밀번호를 입려해주세요.", src: true),

          Spacer(flex: 1),
          SecondInfoText(onPressed: goToSignPage),
          NextButtonLayout(onPressed: goToHomeScreen, acting: "로그인"),
          SizedBox(height: 52),
        ],
      ),
    );
  }

  goToSignPage() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return SignMainPage();
        },
      ),
    );
  }

  goToHomeScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return HomeScreen();
        },
      ),
    );
  }
}

class InfoText extends StatelessWidget {
  const InfoText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 157),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "로그인",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
          ),
          Text(
            "지금 로그인하고 readmark를 사용해보세요.",
            style: TextStyle(fontSize: 18, color: Color(0xFF9A9A9A)),
          ),
        ],
      ),
    );
  }
}

class SecondInfoText extends StatelessWidget {
  final VoidCallback onPressed;

  const SecondInfoText({super.key, required this.onPressed});

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

class UsetInfoInput extends StatelessWidget {
  final String act;
  final String action;
  final bool src;

  const UsetInfoInput({
    super.key,
    required this.act,
    required this.action,
    this.src = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, top: 32),
          child: Text(
            act,
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
          ),
        ),
        TextInputField(acting: action, src: src),
      ],
    );
  }
}
