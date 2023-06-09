import 'package:designsensetest/common.dart';
import 'package:designsensetest/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class FourthCorrectView extends StatelessWidget {
  const FourthCorrectView({Key? key}) : super(key: key);

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
              text: "우리가 무언가 선택할 때는 이전에 자주 선택한\n것을 다시 선택하는 경향이 있어요. 때문에,\n",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "SUIT",
                fontWeight: FontWeight.w500,
                color: Color(0xFF5F666D),
                height: 2,
              )),
          TextSpan(
              text: "사람들이 자주 선택하는 옵션은 미리\n활성화 시켜주는 게 좋아요..",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "SUIT",
                fontWeight: FontWeight.w600,
                color: Palette.primary,
                height: 2,
              )),
        ])),
        correct: "A",
        page: 4,
        onTap: () {
          Get.toNamed("/fifth/question", arguments: (score, correct));
        },
        isCorrect: correct);
  }
}
