import 'package:flutter/material.dart';
import 'package:quiz_app/screens/questions_screen.dart';

class CategoryCard extends StatelessWidget {
  final String quizName;
  final Color quizColor;
  final List<Map<String, dynamic>> questions;

  const CategoryCard({
    required this.quizName,
    required this.quizColor,
    required this.questions,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => QuestionsScreen(
              questions: questions,
              title: quizName,
              color: quizColor,
            ),
          ),
        ),
        child: Container(
          color: quizColor,
          child: Center(
            child: Text(
              quizName,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }
}
