import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mail_mind_extension/core/theme/app_colors.dart';
import 'package:mail_mind_extension/core/theme/app_styles.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double width;
  final double height;
  final Color color;

  const CustomTextButton({
    super.key,
    required this.text,
    this.onPressed,
    this.width = 155,
    this.height = 40,
    this.color = kPrimaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(12.r),
        child: Container(
          width: width.r,
          height: height.r,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Center(
            child: Text(
              text,
              style: AppStyles.bodyText5.copyWith(color: kTertiaryColor),
            ),
          ),
        ),
      ),
    );
  }
}
