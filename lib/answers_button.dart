import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton( {super.key,required this.answerText,required this.onTap,});
  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 60, 
          ),
        backgroundColor: Color.fromARGB(255, 0, 18, 33),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),),
      ),
      child: Text(answerText, textAlign: TextAlign.center,),
    );
  }
}
