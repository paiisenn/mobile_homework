import 'package:flutter/material.dart';
import 'package:mobile_exercise/weeks/week5/exercise1/week5_exercise1.dart';
import 'package:mobile_exercise/weeks/week5/exercise2/week5_exercise2.dart';

class Week5Menu extends StatelessWidget {
  const Week5Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tuần 5')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text('Bài 1'),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => OnboardingScreen()),
                ),
              },
            ),
            ElevatedButton(
              child: Text('Bài 2'),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ForgetPasswordScreen()),
                ),
              },
            ),
          ],
        ),
      ),
    );
  }
}
