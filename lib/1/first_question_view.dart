import 'package:designsensetest/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class FirstQuestionView extends StatelessWidget {
  const FirstQuestionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultQuestionPage(
      page: 1,
      onTapA: () {
        Get.toNamed("/first/correct", arguments: (0, false));
      },
      childA: Padding(
        padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
        child: SvgPicture.asset("assets/image/1A.svg"),
      ),
      onTapB: () {
        Get.toNamed("/first/correct", arguments: (1, true));
      },
      childB: Padding(
        padding: const EdgeInsets.fromLTRB(0,12,0,0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("이름",
              style: TextStyle(
                fontSize:20,
                fontFamily: "SUIT",
                fontWeight: FontWeight.w600,
                color: Color(0xFF2E3438),
              )
            ),
            const SizedBox(height:12),
            SvgPicture.asset("assets/image/1B.svg")
          ],
        )
      )
    );
  }
}
