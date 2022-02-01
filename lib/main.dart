import 'package:flutter/material.dart';
import 'screens/home/home_page.dart';

void main() {
  runApp(const Quiz());
}

class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PopQuiz',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      
      home: const HomePage(),
    );
  }
}

