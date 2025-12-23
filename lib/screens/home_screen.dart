import 'package:flutter/material.dart';
import '../weeks/week1/week1_menu.dart';
import '../weeks/week3/week3_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bài tập Flutter')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('Tuần 1'),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const Week1Menu()),
                ),
              },
            ),
            ElevatedButton(
              child: const Text("Tuần 3"),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const Week3Menu()),
                ),
              },
            ),
          ],
        ),
      ),
    );
  }
}
