import 'package:flutter/material.dart';
import 'package:qwiz_app/model.dart/question.dart';

List<QuestionModel> question = [
  QuestionModel(
      "How many Whiskers does the average cat have one each side of its face ?",
      {
        "1": false,
        "3": false,
        "12": true,
        "5": false,
      }),
  QuestionModel("When does a cat purr ?", {
    "When cares for its kittens": false,
    "When needs confort": false,
    "When feel confort": false,
    "All of abouve ": true,
  }),
  QuestionModel("When does a cat purr ?", {
    "When cares for its kittens": false,
    "When needs confort": false,
    "When feel confort": true,
    "All of abouve ": false,
  }),
  QuestionModel(
      "How many Whiskers does the average cat have one each side of its face ?",
      {
        "1": true,
        "3": false,
        "12": false,
        "5": false,
      }),
  QuestionModel(("What is my name ?"), {
    "Amin": false,
    "kamlesh": false,
    "Adil": true,
    "Mihir": false,
  }),
];
