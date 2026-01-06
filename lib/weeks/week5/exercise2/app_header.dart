import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  final String title;

  const AppHeader({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Thay thế logo/hình ảnh bằng một Icon
        const Icon(
          Icons.school, // Ví dụ Icon trường đại học
          size: 80,
          color: Colors.teal,
        ),
        const SizedBox(height: 8),
        // Thay thế tên trường đại học
        const Text(
          'UNIVERSITY OF HCMC',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 24),
        // Tên tác vụ (SmartTasks)
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
