import 'package:designsensetest/common.dart';
import 'package:designsensetest/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class EighthCorrectView extends StatelessWidget {
  const EighthCorrectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final (int score, bool correct) = Get.arguments;
    return DefaultCorrectPage(
        image: Column(
          children: [
            const SizedBox(height: 16),
            SvgPicture.asset("assets/image/8A.svg"),
          ],
        ),
        content: const Text.rich(TextSpan(children: [
          TextSpan(
              text:
                  "버튼의 내용을 “네 / 아니요”로 구성하게 되면\n버튼을 눌렀을 때 어떤 걸 할 수 있는지\n모를 수 있어요. 그렇기에 버튼을 눌렀을 때\n",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "SUIT",
                fontWeight: FontWeight.w500,
                color: Color(0xFF5F666D),
                height: 2,
              )),
          TextSpan(
              text: "어떤 것을 할 수 있는지를 알려주는 게 좋아요.",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "SUIT",
                fontWeight: FontWeight.w600,
                color: Palette.primary,
                height: 2,
              )),
        ])),
        correct: "A",
        page: 8,
        onTap: () {
          Get.toNamed("/ninth/question", arguments: (score, correct));
    },
        isCorrect: correct);
  }
}
