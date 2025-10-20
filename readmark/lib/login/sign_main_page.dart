import 'package:flutter/material.dart';
import 'package:readmark/component/next_button_layout.dart';
import 'package:readmark/login/sign_complete_page.dart';

final List<String> titles = [
  "이름을 입력해주세요.",
  "이메일을 입력해주세요.",
  "아이디를 입력해주세요..",
  "비밀번호를 입력해주세요.",
];

final List<String> hints = ["성명 입력", "이메일 입력", "아이디 입력", "비밀번호 입력"];

class SignMainPage extends StatefulWidget {
  const SignMainPage({super.key});

  @override
  State<SignMainPage> createState() => _SignMainPage();
}

class _SignMainPage extends State<SignMainPage> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: BottomButton(onPressed: bottomButtonOnPressed),

      body: Column(
        children: [
          SizedBox(height: 68),
          PopButton(currentPage: _currentPage, onPressed: onBack),
          HeaderTitle(currentPage: _currentPage),
          TextInputBox(currentPage: _currentPage),
        ],
      ),
    );
  }

  bottomButtonOnPressed() {
    setState(() {
      if (_currentPage < titles.length - 1) {
        _currentPage++;
      } else {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return SignCompletePage();
            },
          ),
        );
      }
    });
  }

  onBack() {
    if (_currentPage == 0) {
      Navigator.of(context).pop();
    } else {
      setState(() {
        _currentPage--;
      });
    }
  }
}

class PopButton extends StatelessWidget {
  final int currentPage;
  final VoidCallback onPressed;

  const PopButton({
    super.key,
    required this.currentPage,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: onPressed,
            child: Image.asset("assets/img/backarrow.png"),
          ),
        ],
      ),
    );
  }
}

class HeaderTitle extends StatelessWidget {
  final int currentPage;

  const HeaderTitle({super.key, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titles[currentPage],
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
          ),
          Text("${currentPage + 1}/4", style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}

class TextInputBox extends StatelessWidget {
  final int currentPage;

  const TextInputBox({super.key, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 16),
      child: TextField(
        decoration: InputDecoration(
          hintText: hints[currentPage],
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  final VoidCallback onPressed;

  const BottomButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 52),
      child: NextButtonLayout(onPressed: onPressed, acting: "다음"),
    );
  }
}
