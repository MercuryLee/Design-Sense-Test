import 'package:designsensetest/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class FifthQuestionView extends StatelessWidget {
  const FifthQuestionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final (int score, bool correct) = Get.arguments;
    return DefaultQuestionPage(
        onTapA: () {
          Get.toNamed("/fifth/correct", arguments: ((score + 1), true));
        },
        onTapB: () {
          Get.toNamed("/fifth/correct", arguments: (score, false));
        },
        childA: Column(
          children: [
            const SizedBox(height: 24),
            SvgPicture.asset("assets/image/4A.svg"),
          ],
        ),
        childB: Column(
          children: [
            const SizedBox(height: 24),
            SvgPicture.asset("assets/image/5B.svg"),
          ],
        ),
        page: 5);
  }
}
