import 'package:designsensetest/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class NinthQuestionView extends StatelessWidget {
  const NinthQuestionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final (int score, bool correct) = Get.arguments;
    return DefaultQuestionPage(
        onTapA: () {
          Get.toNamed("/ninth/correct", arguments: ((score + 1), true));
        },
        onTapB: () {
          Get.toNamed("/ninth/correct", arguments: ((score + 1), true));
        },
        childA: Column(
          children: [
            const SizedBox(height: 16),
            SvgPicture.asset("assets/image/9A.svg"),
          ],
        ),
        childB: Column(
          children: [
            const SizedBox(height: 16),
            SvgPicture.asset("assets/image/9B.svg"),
          ],
        ),
        page: 9);
  }
}
