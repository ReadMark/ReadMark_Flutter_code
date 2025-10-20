import 'package:flutter/material.dart';
import 'package:readmark/component/next_button_layout.dart';

final List<String> titles = [
  "이름을 입력해주세요.",
  "이메일을 입력해주세요.",
  "아이디를 입력해주세요..",
  "비밀번호를 입력해주세요.",
];

final List<String> hints = ["성명 입력", "이메일 입력", "아이디 입력", "비밀번호 입력"];

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: BottomButton(),

      body: Column(
        children: [SizedBox(height: 68), PopButton(), Title(), TextInputBox()],
      ),
    );
  }
}

class PopButton extends StatelessWidget {
  const PopButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Image.asset("assets/img/backarrow.png"),
          ),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titles[1],
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
          ),
          Text("1/4", style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}

class TextInputBox extends StatelessWidget {
  const TextInputBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 16),
      child: TextField(
        decoration: InputDecoration(
          hintText: hints[0],
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  const BottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 52),
      child: NextButtonLayout(onPressed: () {}, acting: "다음"),
    );
  }
}
