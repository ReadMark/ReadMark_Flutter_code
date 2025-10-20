import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(children: [TitleText(), ImageText()]),
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 51, bottom: 12),
      child: Text(
        "ReadMark",
        style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class ImageText extends StatelessWidget {
  const ImageText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          "assets/img/bookbackground.png",
          width: MediaQuery.of(context).size.width,
          height: 267,
          fit: BoxFit.fill,
        ),
        Text(
          "오늘 읽은 페이지 수: 0p\n3일째 책장이 비어있어요ㅜ_ㅜ",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 28,
            color: Colors.white,

            shadows: [
              Shadow(
                offset: Offset(1.5, 1.5),
                color: Colors.black,
                blurRadius: 2,
              ),
              Shadow(
                offset: Offset(-1.5, 1.5),
                color: Colors.black,
                blurRadius: 2,
              ),
              Shadow(
                offset: Offset(1.5, -1.5),
                color: Colors.black,
                blurRadius: 2,
              ),
              Shadow(
                offset: Offset(-1.5, -1.5),
                color: Colors.black,
                blurRadius: 2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
