import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String quizName;
  final Color quizColor;

  const CategoryCard({
    required this.quizName,
    required this.quizColor,
    super.key,

  });


  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color:quizColor,
        child: Center(child: Text(quizName)),
      ),
    );
  }
}
