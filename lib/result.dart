import 'package:designsensetest/common.dart';
import 'package:designsensetest/palette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultPageView extends StatelessWidget {
  const ResultPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final (int score, bool correct) = Get.arguments;
    return Scaffold(
        body: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          child: Padding(
              padding: defaultPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height / 10),
                  Image.asset("assets/icons/logo.png", width: 40),
                  const SizedBox(height: 20),
                  const Text.rich(TextSpan(children: [
                    TextSpan(
                        text: "#IMPLUDE",
                        style: TextStyle(
                          fontFamily: "SUIT",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF5F666D),
                        )),
                    TextSpan(
                        text: "가 준비한",
                        style: TextStyle(
                          fontFamily: "SUIT",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF9099A6),
                        )),
                  ])),
                  const SizedBox(height:8),
                  const Text(
                      "디자인 감각 테스트",
                      style: TextStyle(
                        fontFamily: "Tenada",
                        fontSize: 28,
                        color: Color(0xFF42464A),
                      )),
                  const SizedBox(height: 36),
                  Text.rich(TextSpan(children: [
                    const TextSpan(
                        text: "10개의 문제 중\n",
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "SUIT",
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF181D21),
                        )),
                    TextSpan(
                        text: "$score개",
                        style: const TextStyle(
                          fontSize: 30,
                          fontFamily: "SUIT",
                          fontWeight: FontWeight.w700,
                          color: Palette.primary,
                        )),
                    const TextSpan(
                        text: "의 문제를 맞췄어요! ",
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "SUIT",
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF181D21),
                        )),
                  ])),
                  const SizedBox(height: 16),
                  const Text("준비한 문제는 여기까지에요.\n나중에 여기서 만날 수 있기를 응원할게요!",
                      style: TextStyle(
                        fontFamily: "SUIT",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF9099A6),
                      )),
                ],
              )),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 32, horizontal: 28.5),
                  child: ColorButton(
                    onTap: () {
                      Get.toNamed("/");
                    },
                    color: Palette.primary,
                    content: "다시 하기",
                    fontColor: Colors.white,
                    pressedColor: const Color(0xFF3585E0),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
