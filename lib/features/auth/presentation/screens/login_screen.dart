import 'package:flutter/material.dart';
import 'package:tadarraboon/features/auth/presentation/screens/register_screen.dart';
import '../../../../core/constants/images.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_styles.dart';
import '../widgets/auth_text_field.dart';
import '../widgets/primary_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: ListView(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Logo or Title
                  Center(
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Image.asset(
                          AppImages.logo,
                          height: 150,
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'تدرّبون',
                          style: AppTextStyles.headlineMedium,

                        ),
                        const SizedBox(height: 4),
                        Text(
                          'سجّل الدخول إلى حسابك',
                          style: AppTextStyles.caption,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),

                  // Email Field
                  const AuthTextField(
                    label: 'البريد الإلكتروني',
                    hint: 'example@email.com',
                    keyboardType: TextInputType.emailAddress,
                  ),

                  const SizedBox(height: 20),

                  // Password Field
                  const AuthTextField(
                    label: 'كلمة المرور',
                    hint: '••••••••',
                    obscureText:  true,
                  ),

                  const SizedBox(height: 12),

                  // Forgot Password
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        // Navigator.push to forgot password screen
                      },
                      child: const Text(
                        'نسيت كلمة المرور؟',
                        style: TextStyle(color: AppColors.primary),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Login Button
                  const PrimaryButton(text: '!جاوب الاّن'),

                  const SizedBox(height: 24),

                  // Don't have an account?
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const RegisterScreen()),
                        );
                      },
                      child: const Text(
                        'ماعندك حساب؟ سجل',
                        style: TextStyle(color: AppColors.textSecondary),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
