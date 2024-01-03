import 'package:flutter/material.dart';
import 'package:questionandanswer_game_app/app/modules/home/data/models/data_model.dart';
import 'package:questionandanswer_game_app/app/modules/home/presentation/widget/reusable_answer_row.dart';
import 'package:questionandanswer_game_app/core/utilities/constants/app_colour.dart';
import 'package:questionandanswer_game_app/core/utilities/constants/app_font_size.dart';
import 'package:questionandanswer_game_app/core/utilities/constants/app_font_weight.dart';
import 'package:questionandanswer_game_app/core/utilities/constants/app_images.dart';
import 'package:questionandanswer_game_app/core/utilities/constants/app_spacing.dart';

import '../widget/reusable_top_row.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int questionFlow = 0;
  int score = 0;
  String selectedAnswer = "";
  bool isFinished = false;
  final store = QuestionAndAnswer.questionAndAnswerStore;

  void nextQuestion() {
    if (questionFlow < store.length - 1) {
      questionFlow++;
      setState(() {});
    } else {
      isFinished = true;
      finished();
    }
  }

  String getQuestion() {
    return store[questionFlow].questionText;
  }

  getAnswer() {
    return store[questionFlow].correctAnswer;
  }

  void reset() {
    questionFlow = 0;
    score =0;
    Navigator.pop(context);
    setState(() {});
  }

  pass() {
    if (score > 2) {
      return const Icon(
        Icons.gpp_good,
        color: AppColour.green,
        size: AppSpacing.h50,
      );
    } else {
      return const Icon(
        Icons.cancel,
        color: AppColour.red,
        size: AppSpacing.h50,
      );
    }
  }

  void finished() {
    if (isFinished) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Center(
                  child: Text(
                    "Finished!",
                    style: TextStyle(
                      fontSize: AppFontSize.h16,
                      fontWeight: AppFontWeight.w500,
                      color: AppColour.backgroundBlue,
                    ),
                  ),
                ),
                content: Container(
                  height: 80,
                  child: Column(
                    children: [
                      pass(),
                      const SizedBox(
                        height: AppSpacing.h10,
                      ),
                      Text(
                        "Your score is $score out of ${store.length}",
                        style: const TextStyle(
                          fontWeight: AppFontWeight.w500,
                          fontSize: AppFontSize.h14,
                          color: AppColour.backgroundBlue,
                        ),
                      ),
                    ],
                  ),
                ),
                actions: [
                  Center(
                    child: TextButton(
                      onPressed: () {
                        reset();
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: AppSpacing.h10,bottom: AppSpacing.h10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppSpacing.h20,),
                          color: AppColour.darkBlue
                        ),
                          child:const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               Text(
                                "Done",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: AppFontSize.h12,
                                  fontWeight: AppFontWeight.w500
                                ),
                                                      ),
                            ],
                          )),
                    ),
                  ),
                ],
              ));
    }
  }

  void answerCheck() {
    String correctAnswer = getAnswer();
    if (selectedAnswer == correctAnswer) {
      score++;
      nextQuestion();
    } else {
      nextQuestion();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColour.backgroundBlue,
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: AppSpacing.h30,
                left: AppSpacing.h20,
                bottom: AppSpacing.h10,
                right: AppSpacing.h20,
              ),
              decoration: const BoxDecoration(
                  color: AppColour.darkBlue,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(AppSpacing.h20),
                    bottomLeft: Radius.circular(AppSpacing.h20),
                  )),
              child: const Padding(
                padding: EdgeInsets.only(top: AppSpacing.h5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.settings_outlined,
                          size: AppSpacing.h24,
                          color: AppColour.white,
                        ),
                        ReusableTopRow(
                          icons: Icon(
                            Icons.currency_exchange_outlined,
                            color: AppColour.yellow,
                            size: AppSpacing.h20,
                          ),
                          text: "\$ 1000",
                        ),
                        ReusableTopRow(
                          icons: Icon(
                            Icons.lightbulb,
                            color: AppColour.yellow,
                            size: AppSpacing.h20,
                          ),
                          text: "1.235",
                        ),
                        ReusableTopRow(
                          icons: Icon(
                            Icons.temple_hindu,
                            color: AppColour.yellow,
                            size: AppSpacing.h20,
                          ),
                          text: "456",
                        ),
                        Icon(
                          Icons.notifications_active,
                          color: AppColour.white,
                          size: AppSpacing.h24,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: AppSpacing.h30,
            ),
            Image.asset(
              AppImages.memoji,
              scale: 4,
            ),
            const SizedBox(
              height: AppSpacing.h30,
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(
                    left: AppSpacing.h20, right: AppSpacing.h20),
                padding: const EdgeInsets.all(
                  AppSpacing.h20,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppSpacing.h20),
                    color: AppColour.darkBlue),
                child: Center(
                  child: Text(
                    store[questionFlow].questionText,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: AppFontSize.h16,
                      fontWeight: AppFontWeight.w400,
                      color: AppColour.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: AppSpacing.h30,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: AppSpacing.h20, right: AppSpacing.h20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: ReusableAnswerRow(
                            answer: store[questionFlow].questionAnswer1,
                            onTap: () {
                              selectedAnswer =
                                  store[questionFlow].questionAnswer1;
                              answerCheck();
                            },
                          ),
                        ),
                        const SizedBox(
                          width: AppSpacing.h20,
                        ),
                        Expanded(
                          child: ReusableAnswerRow(
                            answer: store[questionFlow].questionAnswer2,
                            onTap: () {
                              selectedAnswer =
                                  store[questionFlow].questionAnswer2;
                              answerCheck();
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: AppSpacing.h20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: ReusableAnswerRow(
                            answer: store[questionFlow].questionAnswer3,
                            onTap: () {
                              selectedAnswer =
                                  store[questionFlow].questionAnswer3;
                              answerCheck();
                            },
                          ),
                        ),
                        const SizedBox(
                          width: AppSpacing.h20,
                        ),
                        Expanded(
                          child: ReusableAnswerRow(
                            answer: store[questionFlow].questionAnswer4,
                            onTap: () {
                              selectedAnswer =
                                  store[questionFlow].questionAnswer4;
                              answerCheck();
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
