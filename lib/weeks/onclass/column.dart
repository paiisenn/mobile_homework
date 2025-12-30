import 'package:flutter/material.dart';

class ColumnLayout extends StatelessWidget {
  const ColumnLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Column ')),
      body: Column(
        children: [
          for (int i = 1; i <= 1000000; i++)
            ListTile(
              title: Text('Text $i'),
              subtitle: const Text('Displays text'),
            ),
        ],
      ),
    );
  }
}
