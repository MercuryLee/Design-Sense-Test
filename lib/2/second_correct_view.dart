import 'package:designsensetest/common.dart';
import 'package:designsensetest/palette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondCorrectView extends StatelessWidget {
  const SecondCorrectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final (int score, bool correct) = Get.arguments;
    return DefaultCorrectPage(
      image: const Text(
          "나는 사람들이 디미고에 관심을 가지고 \n좋아하는 이유에 대한 놀라운 증명을 발견했다. \n하지만 여백이 모자라 적지 않는다.",
          style: TextStyle(
            fontSize: 16,
            fontFamily: "SUIT",
            fontWeight: FontWeight.w500,
            color: Color(0xFF42464A),
            height: 2,
          )),
      content: const Text.rich(TextSpan(children: [
        TextSpan(
          text: "“행간”",
          style: TextStyle(
            fontSize: 16,
            fontFamily: "SUIT",
            fontWeight: FontWeight.w600,
            color: Color(0xFF2E3438),
    height: 2,
          ),
        ),
        TextSpan(
            text: "은 문장과 문장 사이의 간격을 의미해요. \n한 문단을 읽는데 있어서 중요한 요소이기에,\n",
            style: TextStyle(
              fontSize: 16,
              fontFamily: "SUIT",
              fontWeight: FontWeight.w500,
              color: Color(0xFF5F666D),
              height: 2,
            )),
        TextSpan(
            text: "문장 간에 충분한 간격을 벌려주는 게 좋아요.",
            style: TextStyle(
              fontSize: 16,
              fontFamily: "SUIT",
              fontWeight: FontWeight.w600,
              color: Palette.primary,
    height: 2,
            )),
      ])),
      correct: "A",
      page: 2,
      onTap: () {
        Get.toNamed("/third/question", arguments: (score, correct));
      },
      isCorrect: correct,
    );
  }
}
