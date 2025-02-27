import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mail_mind_extension/core/theme/app_colors.dart';
import 'package:mail_mind_extension/core/theme/app_styles.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double width;
  final double height;
  final Color color;
  final String? iconPath;

  const CustomTextButton({
    super.key,
    required this.text,
    this.onPressed,
    this.width = 100,
    this.height = 100,
    this.color = kPrimaryColor,
    this.iconPath,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (iconPath != null) ...[
                  SvgPicture.asset(iconPath!, color: kTertiaryColor),
                  SizedBox(width: 14.r),
                ],
                Text(
                  text,
                  style: AppStyles.bodyText5.copyWith(color: kTertiaryColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
