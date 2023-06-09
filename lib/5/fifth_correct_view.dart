import 'package:designsensetest/common.dart';
import 'package:designsensetest/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class FifthCorrectView extends StatelessWidget {
  const FifthCorrectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final (int score, bool correct) = Get.arguments;
    return DefaultCorrectPage(
        image: Column(
          children: [
            const SizedBox(height: 24),
            SvgPicture.asset("assets/image/4A.svg"),
          ],
        ),
        content: const Text.rich(TextSpan(children: [
          TextSpan(
            text: "“드롭다운 메뉴”",
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
                  "는 선택할 요소를 차례대로\n보여주는 메뉴에요. 만약 선택할 수 있는\n옵션이 많다면 사용하기에 좋지만,\n",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "SUIT",
                fontWeight: FontWeight.w500,
                color: Color(0xFF5F666D),
                height: 2,
              )),
          TextSpan(
              text: "요소가 적다면 리스트 형태가 더 적합해요.",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "SUIT",
                fontWeight: FontWeight.w600,
                color: Palette.primary,
                height: 2,
              )),
        ])),
        correct: "A",
        page: 5,
        onTap: () {
          Get.toNamed("/sixth/question", arguments: (score, correct));
        },
        isCorrect: correct);
  }
}
   