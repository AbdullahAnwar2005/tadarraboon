import 'package:flutter/material.dart';
import 'package:tadarraboon/features/auth/presentation/screens/login_screen.dart';
import 'core/theme/app_theme.dart';

void main() {
  runApp(const TadarraboonApp());
}

class TadarraboonApp extends StatelessWidget {
  const TadarraboonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tadarraboon',
      theme: AppTheme.lightTheme,
      home: LoginScreen() // Replace with your first screen
    );
  }
}
