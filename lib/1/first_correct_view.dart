import 'package:designsensetest/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class FirstCorrectView extends StatelessWidget {
  const FirstCorrectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final (int score, bool correct) = Get.arguments;
    return DefaultCorrectPage(
      isCorrect: correct,
      onTap: () {
        Get.toNamed("/second/question", arguments: (score, correct));
      },
      image: Padding(
          padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("이름",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "SUIT",
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF2E3438),
                  )),
              const SizedBox(height: 12),
              SvgPicture.asset("assets/image/1B.svg")
            ],
          )),
      content: const Text.rich(TextSpan(children: [
        TextSpan(
            text: "“Placeholder”",
            style: TextStyle(
              fontSize: 16,
              fontFamily: "SUIT",
              fontWeight: FontWeight.w600,
              color: Color(0xFF2E3438),
              height: 2,
            )),
        TextSpan(
            text:
                "는 입력칸 안에 먼저 보여주는 \n예시문이에요. 사용자가 입력을 시작하면 \n보이지 않기 때문에, 무엇을 입력해야 하는지\n",
            style: TextStyle(
              fontSize: 16,
              fontFamily: "SUIT",
              fontWeight: FontWeight.w500,
              color: Color(0xFF5F666D),
              height: 2,
            )),
        TextSpan(
            text: "무엇을 입력해야 하는지 항상 보이게 하는게 좋아요.",
            style: TextStyle(
              fontSize: 16,
              fontFamily: "SUIT",
              fontWeight: FontWeight.w600,
              color: Color(0xFF3D92F4),
              height: 2,
            ))
      ])),
      correct: "B",
      page: 1,
    );
  }
}
