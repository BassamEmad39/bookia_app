import 'package:bookie_app/core/utils/app_colors.dart';
import 'package:bookie_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.bgColor,
    this.textColor,
    this.borderColor,
    this.height,
    this.width,
  });
  final String text;
  final Function() onPressed;
  final Color? bgColor;
  final Color? textColor;
  final Color? borderColor;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 55,
      width: width ?? double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          side:
              borderColor != null
                  ? BorderSide(color: borderColor!, width: 1)
                  : null,
          backgroundColor: bgColor ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyles.getBody(color: textColor ?? AppColors.whiteColor),
        ),
      ),
    );
  }
}
