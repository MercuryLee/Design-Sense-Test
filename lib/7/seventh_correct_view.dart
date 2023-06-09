import 'package:designsensetest/common.dart';
import 'package:designsensetest/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SeventhCorrectView extends StatelessWidget {
  const SeventhCorrectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final (int score, bool correct) = Get.arguments;
    return DefaultCorrectPage(
        image: Column(
          children: [
            const SizedBox(height: 18),
            SvgPicture.asset("assets/image/7B.svg"),
          ],
        ),
        content: const Text.rich(TextSpan(children: [
          TextSpan(
            text: "“텍스트 버튼”",
            style: TextStyle(
              fontSize: 16,
              fontFamily: "SUIT",
              fontWeight: FontWeight.w600,
              color: Color(0xFF2E3438),
              height: 2,
            ),
          ),
          TextSpan(
              text: "은 일반 텍스트와의 구별을 위해\n",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "SUIT",
                fontWeight: FontWeight.w500,
                color: Color(0xFF5F666D),
                height: 2,
              )),
          TextSpan(
              text: "일반 텍스트와는 다른 계열의 색상을\n사용하는게 좋아요.",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "SUIT",
                fontWeight: FontWeight.w600,
                color: Palette.primary,
                height: 2,
              )),
        ])),
        correct: "B",
        page: 7,
        onTap: () {
          Get.toNamed("/eighth/question", arguments: (score, correct));
        },
        isCorrect: correct);
  }
}
