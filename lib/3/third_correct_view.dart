import 'package:designsensetest/common.dart';
import 'package:designsensetest/palette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThirdCorrectView extends StatelessWidget {
  const ThirdCorrectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final (int score, bool correct) = Get.arguments;
    return DefaultCorrectPage(
      image: const Text(
        "나는 사람들이 디미고에 관심을 가지고\n좋아하는 이유에 대한 놀라운 증명을 발견했다.\n하지만 여백이 모자라 적지 않는다.",
        style: TextStyle(
          fontSize: 16,
          fontFamily: "SUIT",
          fontWeight: FontWeight.w500,
          color: Color(0xFF42464A),
          height: 2,
        ),
      ),
      content: const Text.rich(TextSpan(children: [
        TextSpan(
          text: "“들여쓰기”",
          style: TextStyle(
            fontSize: 16,
            fontFamily: "SUIT",
            fontWeight: FontWeight.w600,
            color: Color(0xFF2E3438),
            height: 2,
          ),
        ),
        TextSpan(
            text:
                "는 본문을 쓰고 읽는데 있어서\n중요한 요소에요. 각 주제를 명확하게 구분하고\n독자가 글을 쉽게 읽을 수 있도록 하기 위해,\n",
            style: TextStyle(
              fontSize: 16,
              fontFamily: "SUIT",
              fontWeight: FontWeight.w500,
              color: Color(0xFF5F666D),
              height: 2,
            )),
        TextSpan(
            text: "본문의 내용을 들여쓰기 하는게 중요해요.",
            style: TextStyle(
              fontSize: 16,
              fontFamily: "SUIT",
              fontWeight: FontWeight.w600,
              color: Palette.primary,
              height: 2,
            )),
      ])),
      correct: "B",
      page: 3,
      onTap: () {
        Get.toNamed("/fourth/question", arguments: (score, correct));
      },
      isCorrect: correct,
    );
  }
}
