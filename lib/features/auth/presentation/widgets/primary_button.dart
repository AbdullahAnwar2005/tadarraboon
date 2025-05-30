import 'package:flutter/material.dart';
import '../../../../core/theme/colors.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const PrimaryButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Color(0xFF648A75))
        ),
        onPressed: onPressed ?? () {},
        child: Text(text,style: TextStyle(fontSize: 20),),
      ),
    );
  }
}
