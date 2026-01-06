import 'package:flutter/material.dart';
import 'app_header.dart'; // Import Widget chung

class ConfirmScreen extends StatelessWidget {
  final String email; // Nhận dữ liệu (email) từ màn hình trước
  final String newPassword; // Nhận dữ liệu (mật khẩu mới) từ màn hình trước

  const ConfirmScreen({
    Key? key,
    required this.email,
    required this.newPassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Confirm')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const AppHeader(title: 'SmartTasks'),
            const SizedBox(height: 48),
            const Text(
              'Confirm',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'We are here to help you!',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            // Hiển thị dữ liệu được truyền (chỉ mô phỏng)
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Email'),
              subtitle: Text(email),
            ),
            ListTile(
              leading: const Icon(Icons.lock_open),
              title: const Text('New Password (Mã hóa)'),
              subtitle: Text('*' * newPassword.length),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Submit',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              onPressed: () {
                // Quay lại màn hình đăng nhập hoặc màn hình chính
                Navigator.popUntil(context, (route) => route.isFirst);
              },
            ),
          ],
        ),
      ),
    );
  }
}
