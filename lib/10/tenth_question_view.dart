import 'package:designsensetest/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class TenthQuestionView extends StatelessWidget {
  const TenthQuestionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final (int score, bool correct) = Get.arguments;
    return DefaultQuestionPage(
        onTapA: () {
          Get.toNamed("/tenth/correct", arguments: (score, false));
        },
        onTapB: () {
          Get.toNamed("/tenth/correct", arguments: (score + 1, true));
        },
        childA: Column(
          children: [
            const SizedBox(height: 12),
            SvgPicture.asset("assets/image/10A.svg"),
          ],
        ),
        childB: Column(
          children: [
            const SizedBox(height: 12),
            SvgPicture.asset("assets/image/10B.svg"),
          ],
        ),
        page: 10);
  }
}
