import 'package:designsensetest/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondQuestionView extends StatelessWidget {
  const SecondQuestionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final (int score, bool correct) = Get.arguments;
    return DefaultQuestionPage(
      onTapA: (){
        Get.toNamed("/second/correct", arguments: ((score + 1), true));
      },
      onTapB: (){
        Get.toNamed("/second/correct", arguments: ((score), false));
      },
        childA: const Column(
          children: [
            SizedBox(height: 16),
            Text("나는 사람들이 디미고에 관심을 가지고\n좋아하는 이유에 대한 놀라운 증명을 발견했다.\n하지만 여백이 모자라 적지 않는다.",
            style: TextStyle(
              fontSize:16,
              fontFamily: "SUIT",
              fontWeight: FontWeight.w500,
              color: Color(0xFF42464A),
              height: 2,
            )),
          ],
        ),
        childB: const Column(
          children: [
            SizedBox(height:16),
            Text("나는 사람들이 디미고에 관심을 가지고\n좋아하는 이유에 대한 놀라운 증명을 발견했다.\n하지만 여백이 모자라 적지 않는다.",
                style: TextStyle(
                  fontSize:16,
                  fontFamily: "SUIT",
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF42464A),
                  letterSpacing: -1,
                )),
          ],
        ),
        page: 2,
    );
  }
}
