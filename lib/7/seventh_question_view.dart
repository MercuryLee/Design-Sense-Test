import 'package:designsensetest/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SeventhQuestionView extends StatelessWidget {
  const SeventhQuestionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final (int score, bool correct) = Get.arguments;
    return DefaultQuestionPage(
        onTapA: () {
          Get.toNamed("/seventh/correct", arguments: (score, false));
        },
        onTapB: () {
          Get.toNamed("/seventh/correct", arguments: (score + 1, true));
        },
        childA: Column(
          children: [
            const SizedBox(height: 18),
            SvgPicture.asset("assets/image/7A.svg"),
          ],
        ),
        childB: Column(
          children: [
            const SizedBox(height: 18),
            SvgPicture.asset("assets/image/7B.svg"),
          ],
        ),
        page: 7);
  }
}
