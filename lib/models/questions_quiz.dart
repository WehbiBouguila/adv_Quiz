import 'package:flutter/material.dart';

class QuizQuestions {
  const QuizQuestions(this.text, this.answers);
  final String text;
  final List<String> answers;
  List<String> getShuffledAnswers() {
    final shuffiledList = List.of(answers);
    shuffiledList.shuffle();
    return shuffiledList;
  }
}
