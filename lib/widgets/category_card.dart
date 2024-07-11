import 'package:flutter/material.dart';
import 'package:quiz_app/screens/questions_screen.dart';

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
      child: InkWell(
        onTap: () =>Navigator.push
        (context,
        MaterialPageRoute<void>(builder: 
        (BuildContext)
        => QuestionsScreen())
        ) ,
        child: Container(
          color:quizColor,
          child: Center(child: Text(quizName ,style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700))),
        ),
      ),
    );
  }
}
