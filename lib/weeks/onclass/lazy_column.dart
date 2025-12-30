import 'package:flutter/material.dart';

class LazyColumnLayout extends StatelessWidget {
  const LazyColumnLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Column ')),
      body: ListView.builder(
        itemCount: 1000000,
        itemBuilder: (context, i) {
          return ListTile(
            title: Text('Text $i'),
            subtitle: const Text('Displays text'),
          );
        },
      ),
    );
  }
}
