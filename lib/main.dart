import 'package:flutter/material.dart';
import 'theme/y2k_theme.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const AIClosetApp());
}

class AIClosetApp extends StatelessWidget {
  const AIClosetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AI Closet',
      theme: y2kTheme,
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
