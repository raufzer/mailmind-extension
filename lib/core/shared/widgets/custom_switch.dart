import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mail_mind_extension/core/theme/app_colors.dart';

class CustomSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const CustomSwitch({Key? key, required this.value, required this.onChanged})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!value),
      child: Container(
        width: 51.r,
        height: 31.r,
        padding: EdgeInsets.all(3.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.5.r),
          color: value ? kSecondaryColor : kAccentColor3,
        ),
        child: AnimatedAlign(
          duration: const Duration(milliseconds: 200),
          alignment: value ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            width: 25.r,
            height: 25.r,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kTertiaryColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 10,
                  offset: const Offset(3, 8),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
