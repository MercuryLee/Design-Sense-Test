import 'dart:js_util';

import 'package:designsensetest/palette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

const defaultPadding = EdgeInsets.symmetric(horizontal:28, vertical: 32);

class ColorButton extends StatelessWidget {
  final VoidCallback onTap;
  final String content;
  final Color fontColor;
  final Color color;
  final Color pressedColor;
  const ColorButton({
    Key? key,
    required this.onTap,
    required this.content,
    required this.fontColor,
    required this.color,
    required this.pressedColor
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      highlightColor: pressedColor,
      splashColor: pressedColor,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 65,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
            content,
            style: TextStyle(
              fontFamily: "SUIT",
              fontWeight: FontWeight.w600,
              fontSize:20,
              color: fontColor,
            )
        ),
      )
    );
  }
}

class DefaultQuestionPage extends StatelessWidget {
  final VoidCallback onTapA;
  final VoidCallback onTapB;
  final Widget childA;
  final Widget childB;
  final int page;
  const DefaultQuestionPage({
    Key? key,
    required this.onTapA,
    required this.onTapB,
    required this.childA,
    required this.childB,
    required this.page
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 150,
        title: Image.asset("assets/icons/logo.png", width: 36),
        centerTitle: true,
        backgroundColor: const Color(0xFFF2F5F8),
        elevation: 0,
        leading: Row(
          children: [
            IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.chevron_left, color: Colors.black)
            ),
            Text(
              "$page / 10",
              style: const TextStyle(
                fontFamily: "SUIT",
                fontSize:18,
                fontWeight:FontWeight.w600,
                color: Color(0xFF42464A),
              )
            )
          ],
        )
      ),
      body: Stack(
        children : [
          Padding(
            padding: defaultPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "어떤 디자인이\n더 좋은 디자인일까요?",
                  style: TextStyle(
                    fontFamily: "SUIT",
                    fontSize:30,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF181D21),
                  )
                ),
                const SizedBox(height:36),
                Container(
                  width:double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "A",
                          style: TextStyle(
                            fontFamily: "SUIT",
                            fontSize:16,
                            fontWeight: FontWeight.w600,
                          )
                        ),
                        childA
                      ],
                    ),
                  )
                ),
                const SizedBox(height:16),
                Container(
                    width:double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                            "B",
                            style: TextStyle(
                              fontFamily: "SUIT",
                              fontSize:16,
                              fontWeight: FontWeight.w600,
                            )
                        ),
                        childB
                      ],
                    ),
                  )
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(24), topLeft: Radius.circular(24)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical:32, horizontal: 28.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: onTapA,
                            child: Container(
                              alignment: Alignment.center,
                              height:65,
                              width: (MediaQuery.of(context).size.width - 72) / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: const Color(0xFFC6CFD7),
                                    width:1.5,
                                  )
                              ),
                              child: const Text(
                                "A",
                                style: TextStyle(
                                  fontFamily: "SUIT",
                                  fontWeight: FontWeight.w600,
                                  fontSize:20,
                                  color: Color(0xFF42464A),
                                )
                              )
                            ),
                          ),
                          InkWell(
                            onTap: onTapB,
                            child: Container(
                                alignment: Alignment.center,
                                height:65,
                                width: (MediaQuery.of(context).size.width - 72) / 2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: const Color(0xFFC6CFD7),
                                      width:1.5,
                                    )
                                ),
                                child: const Text(
                                    "B",
                                    style: TextStyle(
                                      fontFamily: "SUIT",
                                      fontWeight: FontWeight.w600,
                                      fontSize:20,
                                      color: Color(0xFF42464A),
                                    )
                                )
                            ),
                          ),
                        ],
                      ),
                    )
                  ),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}

class DefaultCorrectPage extends StatelessWidget {
  final Widget image;
  final Widget content;
  final String correct;
  final int page;
  final VoidCallback onTap;
  final bool isCorrect;
  final bool? isTenth;
  const DefaultCorrectPage({
    Key? key,
    required this.image,
    required this.content,
    required this.correct,
    required this.page,
    required this.onTap,
    required this.isCorrect,
    this.isTenth
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leadingWidth: 150,
            title: Image.asset("assets/icons/logo.png", width: 36),
            centerTitle: true,
            backgroundColor: const Color(0xFFF2F5F8),
            elevation: 0,
            leading: Row(
              children: [
                IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(Icons.chevron_left, color: Colors.black)
                ),
                Text(
                    "$page / 10",
                    style: const TextStyle(
                      fontFamily: "SUIT",
                      fontSize:18,
                      fontWeight:FontWeight.w600,
                      color: Color(0xFF42464A),
                    )
                )
              ],
            )
        ),
        body: Stack(
          children: [
            Padding(
            padding: defaultPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    isCorrect ? "정답이에요!\n아래 해설을 확인해 보세요." : "오답이에요...\n아래 해설을 확인해 보세요.",
                    style: const TextStyle(
                      fontFamily: "SUIT",
                      fontSize:30,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF181D21),
                    )
                ),
                const SizedBox(height:36),
                Container(
                    width:double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "정답 : $correct",
                            style: const TextStyle(
                              fontFamily: "SUIT",
                              fontSize:16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF5F666D),
                            )
                          ),
                          image,
                          const SizedBox(height:24),
                          const Divider(thickness: 1),
                          const SizedBox(height:24),
                          const Text(
                              "해설",
                              style: TextStyle(
                                fontFamily: "SUIT",
                                fontSize:20,
                                fontWeight: FontWeight.w700,
                              )
                          ),
                          const SizedBox(height:10),
                          content,
                        ],
                      ),
                    )
                ),

              ],
            ),
          ),
            Positioned(
              bottom: 0,
              left: 0,
              right:0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(24), topLeft: Radius.circular(24)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical:32, horizontal: 28.5),
                        child: ColorButton(
                          onTap: onTap,
                          color: isCorrect ? Palette.success : Palette.danger,
                          content: isTenth ?? false ? "결과 보기": "다음 문제로" ,
                          fontColor: Colors.white,
                          pressedColor: isCorrect ? const Color(0xFF34AE7B) : const Color(0xFFE94242),
                        ),
                      )
                  ),
                ],
              ),
            )
          ]
        )
    );
  }
}

