import 'package:flutter/material.dart';
import 'package:readmark/component/next_button_layout.dart';
import 'package:readmark/login/login_main_page.dart';

class SignCompletePage extends StatefulWidget {
  const SignCompletePage({super.key});

  @override
  State<SignCompletePage> createState() => _SignCompletePageState();
}

class _SignCompletePageState extends State<SignCompletePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: NextNottomButton(onPressed: nextPage),
      body: InfoText(),
    );
  }

  nextPage() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return LoginMainPage();
        },
      ),
    );
  }
}

class NextNottomButton extends StatelessWidget {
  final VoidCallback onPressed;

  const NextNottomButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 52),
      child: NextButtonLayout(onPressed: onPressed, acting: "로그인하러 가기"),
    );
  }
}

class InfoText extends StatelessWidget {
  const InfoText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 161),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "완료!",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
          ),
          Text(
            "계정 가입을 완료하였어요!\n지금 readmark에 로그인하고 사용해보세요.",
            style: TextStyle(fontSize: 18, color: Color(0xFF9A9A9A)),
          ),
        ],
      ),
    );
  }
}
