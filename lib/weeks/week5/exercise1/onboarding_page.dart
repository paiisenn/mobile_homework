import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color iconColor; // Thêm tham số màu

  const OnboardingPage({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    this.iconColor = Colors.blue, // Gán giá trị mặc định là Colors.blue
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 🖼️ Hình ảnh/Icon minh họa
          // Sử dụng một Container tròn có nền màu và Icon bên trong
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: iconColor.withOpacity(0.2), // Màu nền nhạt hơn
            ),
            child: Icon(icon, size: 80, color: iconColor), // Icon màu đậm hơn
          ),
          const SizedBox(height: 40),

          // 📝 Tiêu đề
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 15),

          // 📝 Mô tả
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}
