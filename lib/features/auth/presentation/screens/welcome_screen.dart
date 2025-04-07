import 'package:flutter/material.dart';
import 'package:tadarraboon/core/constants/images.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_styles.dart';
import 'login_screen.dart';
import 'register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),

              // Logo
              Image.asset(
                AppImages.logo,
                height: 200,
              ),

              const SizedBox(height: 24),

              // App Name / Slogan
              Text(
                'مرحباً بك في تدربون',
                style: AppTextStyles.headlineLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                'ابدأ رحلتك في اكتساب المهارات العملية',
                style: AppTextStyles.caption,
                textAlign: TextAlign.center,
              ),

              const Spacer(),

              // Login Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginScreen()),
                    );
                  },
                  child:  Text('تسجيل الدخول',),
                ),
              ),
              const SizedBox(height: 12),

              // Register Button (Outlined)
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RegisterScreen()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppColors.textPrimary,
                    side: const BorderSide(color: AppColors.textPrimary),
                    textStyle: AppTextStyles.bodyLarge,
                  ),
                  child: const Text('إنشاء حساب'),
                ),
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
