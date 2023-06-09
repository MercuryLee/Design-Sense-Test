import 'package:designsensetest/common.dart';
import 'package:designsensetest/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class TenthCorrectView extends StatelessWidget {
  const TenthCorrectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final (int score, bool correct) = Get.arguments;
    return DefaultCorrectPage(
    isTenth: true,
        image: Column(
          children: [
            const SizedBox(height: 12),
            SvgPicture.asset("assets/image/10B.svg"),
          ],
        ),
        content: const Text.rich(TextSpan(children: [
          TextSpan(
              text: "만약 텍스트와 배경의 색이 크게 차이가 나지\n않으면 내용이 제대로 보이지 않을 수 있어요.\n",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "SUIT",
                fontWeight: FontWeight.w500,
                color: Color(0xFF5F666D),
                height: 2,
              )),
          TextSpan(
              text: "텍스트와 배경 색깔에 차이를 주는게 좋아요.",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "SUIT",
                fontWeight: FontWeight.w600,
                color: Palette.primary,
                height: 2,
              )),
        ])),
        correct: "B",
        page: 10,
        onTap: () {
          Get.toNamed("/result", arguments: (score, correct));
        },
        isCorrect: correct);
  }
}
