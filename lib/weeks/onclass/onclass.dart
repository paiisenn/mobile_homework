import 'package:flutter/material.dart';
import 'package:mobile_exercise/weeks/onclass/column.dart';
import 'package:mobile_exercise/weeks/onclass/lazy_column.dart';

class Onclass extends StatelessWidget {
  const Onclass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Onclass')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Column'),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ColumnLayout()),
                ),
              },
            ),
            ElevatedButton(
              child: Text('Lazy Column'),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => LazyColumnLayout()),
                ),
              },
            ),
          ],
        ),
      ),
    );
  }
}
