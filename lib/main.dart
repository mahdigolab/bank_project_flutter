import 'package:flutter/material.dart';
import 'login.dart'; // اضافه کردن Login به عنوان صفحه ورود


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Directionality(
        textDirection: TextDirection.rtl,
        child: Login(), // به‌روزرسانی برای استفاده از صفحه ورود
      ),
    );
  }
}
