import 'package:flutter/material.dart';
import 'package:tadarraboon/core/constants/images.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_styles.dart';
import '../widgets/auth_text_field.dart';
import '../widgets/primary_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo + Title
              Center(
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    Image.asset(AppImages.logo,height: 150,),
                    const SizedBox(height: 12),
                    Text(
                      'إنشاء حساب',
                      style: AppTextStyles.headlineMedium,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'املأ البيانات لإنشاء حساب جديد',
                      style: AppTextStyles.caption,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 32),

              // Full Name
              const AuthTextField(
                label: 'الاسم الكامل',
                hint: 'مثال: عبدالله أنور',
              ),

              const SizedBox(height: 20),

              // Email
              const AuthTextField(
                label: 'البريد الإلكتروني',
                hint: 'example@email.com',
                keyboardType: TextInputType.emailAddress,
              ),

              const SizedBox(height: 20),

              // Password
              const AuthTextField(
                label: 'كلمة المرور',
                hint: '••••••••',
                obscureText: true,
              ),

              const SizedBox(height: 20),

              // Confirm Password
              const AuthTextField(
                label: 'تأكيد كلمة المرور',
                hint: '••••••••',
                obscureText: true,
              ),

              const SizedBox(height: 30),

              // Register Button
              const PrimaryButton(text: 'إنشاء حساب'),

              const SizedBox(height: 24),

              // Already have an account
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context); // Return to Login
                  },
                  child: const Text(
                    'عندك حساب؟ سجّل الدخول',
                    style: TextStyle(color: AppColors.textSecondary),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
