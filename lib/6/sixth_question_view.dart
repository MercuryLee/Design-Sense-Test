import 'package:designsensetest/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SixthQuestionView extends StatelessWidget {
  const SixthQuestionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final (int score, bool correct) = Get.arguments;
    return DefaultQuestionPage(
        onTapA: () {
          Get.toNamed("/sixth/correct", arguments: (score, false));
        },
        onTapB: () {
          Get.toNamed("/sixth/correct", arguments: (score + 1, true));
        },
        childA: Column(
          children: [
            const SizedBox(height: 12),
            SvgPicture.asset("assets/image/6A.svg"),
          ],
        ),
        childB: Column(
          children: [
            const SizedBox(height: 12),
            SvgPicture.asset("assets/image/6B.svg"),
          ],
        ),
        page: 6);
  }
}
