import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
List<Map<String, String>> getHelpInfo(BuildContext context){
  final loc = AppLocalizations.of(context)!;
  return [
    {
      "question": loc.question1,
      "answer": loc.answer1,
    },
    {
      "question": loc.question2,
      "answer": loc.answer2,
    },
    {
      "question": loc.question3,
      "answer": loc.answer3,
    },
    {
      "question": loc.question4,
      "answer": loc.answer4,
    },
    {
      "question": loc.question5,
      "answer": loc.answer5,
    },
    {
      "question": loc.question6,
      "answer": loc.answer6,
    },
    {
      "question": loc.question7,
      "answer": loc.answer7,
    },
    {
      "question": loc.question8,
      "answer": loc.answer8,
    },
    {
      "question": loc.question9,
      "answer": loc.answer9,
    },
  ];
}
