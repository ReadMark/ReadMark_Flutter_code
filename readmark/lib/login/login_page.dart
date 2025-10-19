import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  final acting = [
    "이름을 입력해주세요.",
    "이메일을 입력해주세요.",
    "아이디를 입력해주세요..",
    "비밀번호를 입력해주세요.",
  ];

  final actingHint = ["성명 입력", "이메일 입력", "아이디 입력", "비밀번호 입력"];

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 68),
          Padding(
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
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  acting[1],
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                ),
                Text("1/4", style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText: actingHint[0],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
