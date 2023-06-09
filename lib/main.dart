import 'package:designsensetest/1/first_correct_view.dart';
import 'package:designsensetest/1/first_question_view.dart';
import 'package:designsensetest/10/tenth_correct_view.dart';
import 'package:designsensetest/10/tenth_question_view.dart';
import 'package:designsensetest/2/second_correct_view.dart';
import 'package:designsensetest/2/second_question_view.dart';
import 'package:designsensetest/3/third_correct_view.dart';
import 'package:designsensetest/3/third_question_view.dart';
import 'package:designsensetest/4/fourth_correct_view.dart';
import 'package:designsensetest/4/fourth_question_view.dart';
import 'package:designsensetest/5/fifth_correct_view.dart';
import 'package:designsensetest/5/fifth_question_view.dart';
import 'package:designsensetest/6/sixth_correct_view.dart';
import 'package:designsensetest/6/sixth_question_view.dart';
import 'package:designsensetest/7/seventh_correct_view.dart';
import 'package:designsensetest/7/seventh_question_view.dart';
import 'package:designsensetest/8/eighth_correct_view.dart';
import 'package:designsensetest/8/eighth_question_view.dart';
import 'package:designsensetest/9/ninth_correct_view.dart';
import 'package:designsensetest/9/ninth_question_view.dart';
import 'package:designsensetest/loading_view.dart';
import 'package:designsensetest/result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFF2F5F8)),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const LoadingView()),
        GetPage(name: "/first/question", page: () => const FirstQuestionView()),
        GetPage(name: "/first/correct", page: () => const FirstCorrectView()),
        GetPage(name: "/second/question", page: () => const SecondQuestionView()),
        GetPage(name: "/second/correct", page: () => const SecondCorrectView()),
        GetPage(name: "/third/question", page: () => const ThirdQuestionView()),
        GetPage(name: "/third/correct", page: () => const ThirdCorrectView()),
        GetPage(name: "/fourth/question", page: () => const FourthQuestionView()),
        GetPage(name: "/fourth/correct", page: () => const FourthCorrectView()),
        GetPage(name: "/fifth/question", page: () => const FifthQuestionView()),
        GetPage(name: "/fifth/correct", page: () => const FifthCorrectView()),
        GetPage(name: "/sixth/question", page: () => const SixthQuestionView()),
        GetPage(name: "/sixth/correct", page: () => const SixthCorrectView()),
        GetPage(name: "/seventh/question", page: () => const SeventhQuestionView()),
        GetPage(name: "/seventh/correct", page: () => const SeventhCorrectView()),
        GetPage(name: "/eighth/question", page: () => const EighthQuestionView()),
        GetPage(name: "/eighth/correct", page: () => const EighthCorrectView()),
        GetPage(name: "/ninth/question", page: () => const NinthQuestionView()),
        GetPage(name: "/ninth/correct", page: () => const NinthCorrectView()),
        GetPage(name: "/tenth/question", page: () => const TenthQuestionView()),
        GetPage(name: "/tenth/correct", page: () => const TenthCorrectView()),
        GetPage(name: "/result", page:() => const ResultPageView()),
      ],
    );
  }
}


