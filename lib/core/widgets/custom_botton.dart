import 'package:flutter/material.dart';
import 'package:frute_hub/core/utils/app_colors.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key, required this.onPressed, required this.text});
  final Function() onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            fontFamily: 'cairo',
          ),
        ),
      ),
    );
  }
}
