import 'package:adv_quiz/questions_summary/question_identifier.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;
  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: itemData['question_index'] as int,
          
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style:
                    GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(196, 238, 236, 236)),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                itemData['user_answer'] as String,
                style: const TextStyle(color: Color.fromARGB(210, 0, 0, 0)),
              ),
              Text(
                itemData['correct_answer'] as String,
                style: const TextStyle(color: Color.fromARGB(255, 62, 145, 2)),
              )
            ],
          ),
        ),
      ],
    );
  }
}
