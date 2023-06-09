import 'package:designsensetest/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class EighthQuestionView extends StatelessWidget {
  const EighthQuestionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final (int score, bool correct) = Get.arguments;
    return DefaultQuestionPage(
        onTapA: () {
          Get.toNamed("/eighth/correct", arguments: ((score + 1), true));
        },
        onTapB: () {
          Get.toNamed("/eighth/correct", arguments: (score, false));
        },
        childA: Column(
          children: [
            const SizedBox(height: 16),
            SvgPicture.asset("assets/image/8A.svg"),
          ],
        ),
        childB: Column(
          children: [
            const SizedBox(height: 16),
            SvgPicture.asset("assets/image/8B.svg"),
          ],
        ),
        page: 8);
  }
}
