import 'package:designsensetest/common.dart';
import 'package:designsensetest/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class NinthCorrectView extends StatelessWidget {
  const NinthCorrectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final (int score, bool correct) = Get.arguments;
    return DefaultCorrectPage(
        image: Column(
          children: [
            const SizedBox(height: 16),
            SvgPicture.asset("assets/image/9A.svg"),
          ],
        ),
        content: const Text.rich(TextSpan(children: [
          TextSpan(
              text: "버튼의 색깔은 그 버튼이 어떤 의미를 가지고\n있는 지를 나타내기도 해요. 그렇기 때문에\n",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "SUIT",
                fontWeight: FontWeight.w500,
                color: Color(0xFF5F666D),
                height: 2,
              )),
          TextSpan(
              text: "버튼의 속성에 따라\n색상을 다르게 하는게 좋아요.",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "SUIT",
                fontWeight: FontWeight.w600,
                color: Palette.primary,
                height: 2,
              )),
        ])),
        correct: "A",
        page: 9,
        onTap: (){
          Get.toNamed("/tenth/question", arguments: (score, correct));
    },
        isCorrect: correct);
  }
}
