import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/category_card.dart';
import 'package:quiz_app/data/quiz_app_data.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  final List<Map<String, dynamic>> data = [
    {'name': 'IQ Quiz', 'color': Colors.red, 'questions': iqQuestions},
    {'name': 'Sports Quiz', 'color': Colors.white, 'questions': sportsQuestions},
    {'name': 'History Quiz', 'color': Colors.green, 'questions': historyQuestions},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (int i = 0; i < data.length; i++)
            CategoryCard(
              quizName: data[i]['name'],
              quizColor: data[i]['color'],
              questions: data[i]['questions'],
            ),
        ],
      ),
    );
  }
}
