import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.textButton,
      this.buttonColor,
      this.textButtonColor});
  final String textButton;
  final Color? buttonColor, textButtonColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: buttonColor ?? const Color(0xff4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {},
        child: Text(
          textButton,
          style: AppStyle.styleSemiBold18.copyWith(
            color: textButtonColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
