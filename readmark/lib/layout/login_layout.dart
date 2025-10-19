import 'package:flutter/material.dart';
import 'package:readmark/layout/login_button_layout.dart';
import 'package:readmark/layout/text_button_layout.dart';
import 'package:readmark/layout/text_feild.dart';

class LoginLayout extends StatelessWidget {
  final act;
  final now;
  final buttonText;
  final fieldiInput;

  const LoginLayout({
    super.key,
    required this.act,
    required this.now,
    required this.buttonText,
    required this.fieldiInput,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 68),
            ImageButtonLayout(),
            SizedBox(height: 20),
            Title(acting: act, current: now),
            SizedBox(height: 28),
            TextFeild(acting: fieldiInput),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(vertical: 52),
        child: LoginButtonLayout(acting: buttonText, onPressed: () {}),
      ),
    );
  }
}

class ImageButtonLayout extends StatelessWidget {
  const ImageButtonLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [ImgButtonLayout()],
    );
  }
}

class Title extends StatelessWidget {
  final acting;
  final current;

  const Title({super.key, required this.acting, required this.current});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TitleText(acting: acting),
        Text("$current/4", style: TextStyle(fontSize: 18)),
      ],
    );
  }
}
