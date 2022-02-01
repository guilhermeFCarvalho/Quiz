import 'package:flutter/material.dart';
import 'package:quiz/screens/questionario/questionario.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Questionario()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
