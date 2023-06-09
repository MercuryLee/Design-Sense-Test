import 'package:designsensetest/common.dart';
import 'package:designsensetest/palette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F5F8),
      body:Padding(
        padding: defaultPadding,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height / 4),
              Image.asset("assets/icons/logo.png", width: 72),
              const SizedBox(height:36),
              const Text.rich(
                TextSpan(
                    children: [
                      TextSpan(
                          text: "#IMPLUDE",
                          style: TextStyle(
                            fontFamily: "SUIT",
                            fontSize:20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF42464A),
                          )
                      ),
                      TextSpan(
                          text: "가 준비한",
                          style: TextStyle(
                            fontFamily: "SUIT",
                            fontSize:20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF9099A6),
                          )
                      )
                    ]
                ),
              ),
              const SizedBox(height:16),
              const Text.rich(
                  TextSpan(
                      children:[
                        TextSpan(
                          text: "디자인 ",
                          style:TextStyle(
                            fontFamily: "Tenada",
                            fontSize: 42,
                            color: Color(0XFF0076FF),
                          )
                        ),
                        TextSpan(
                          text: "감각 테스트",
                          style: TextStyle(
                            fontFamily: "Tenada",
                            fontSize:42,
                            color: Color(0xFF2E3438),
                          )
                        )
                      ]
                  )
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end  ,
                  children: [
                    ColorButton(
                      onTap: () {
                        Get.toNamed("/first/question");
                      },
                      color: Palette.primary,
                      content: "시작하기",
                      fontColor: Colors.white,
                      pressedColor: Palette.secondary,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
