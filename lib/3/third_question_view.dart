import 'package:designsensetest/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThirdQuestionView extends StatelessWidget {
  const ThirdQuestionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final (int score, bool correct) = Get.arguments;
    return DefaultQuestionPage(
      onTapA: () {
        Get.toNamed("/third/correct", arguments: ((score), false));
      },
      onTapB: () {
        Get.toNamed("/third/correct", arguments: ((score + 1), true));
      },
      childA: const Text(
          "나는 사람들이 디미고에 관심을 가지고 좋아하\n는 이유에 대한 놀라운 증명을 발견했다. 하지만 \n여백이 모자라 적지 않는다.",
          style: TextStyle(
            fontSize: 16,
            fontFamily: "SUIT",
            fontWeight: FontWeight.w500,
            color: Color(0xFF42464A),
            height: 2,
          )),
      childB: const Text(
          "나는 사람들이 디미고에 관심을 가지고\n좋아하는 이유에 대한 놀라운 증명을 발견했다.\n하지만 여백이 모자라 적지 않는다.",
          style: TextStyle(
            fontSize: 16,
            fontFamily: "SUIT",
            fontWeight: FontWeight.w500,
            color: Color(0xFF42464A),
            height: 2,
          )),
      page: 3,
    );
  }
}
