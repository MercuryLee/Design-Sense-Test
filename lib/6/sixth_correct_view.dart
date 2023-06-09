import 'package:designsensetest/common.dart';
import 'package:designsensetest/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SixthCorrectView extends StatelessWidget {
  const SixthCorrectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final (int score, bool correct) = Get.arguments;
    return DefaultCorrectPage(image: Column(
      children: [
        const SizedBox(height: 12),
        SvgPicture.asset("assets/image/6B.svg"),
      ],
    ), content: const Text.rich(TextSpan(children: [
      TextSpan(
          text:
          "보통 부제목보다는 주제목에 더 중요한 내용이\n들어가는 경우가 많아요. 그렇기 때문에,\n",
          style: TextStyle(
            fontSize: 16,
            fontFamily: "SUIT",
            fontWeight: FontWeight.w500,
            color: Color(0xFF5F666D),
            height: 2,
          )),
      TextSpan(
          text: "부제목보다는 주제목을 더 강조하는 게 좋아요.",
          style: TextStyle(
            fontSize: 16,
            fontFamily: "SUIT",
            fontWeight: FontWeight.w600,
            color: Palette.primary,
            height: 2,
          )),
    ])), correct: "B", page:6, onTap: (){Get.toNamed("/seventh/question", arguments: (score, correct));}, isCorrect: correct);
  }
}
