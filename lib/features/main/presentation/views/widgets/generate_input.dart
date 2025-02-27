import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mail_mind_extension/core/theme/app_colors.dart';
import 'package:mail_mind_extension/core/theme/app_styles.dart';
import 'package:mail_mind_extension/features/main/presentation/views/widgets/generate_reply_button.dart';

class GenerateInput extends StatelessWidget {
  final TextEditingController? controller;
  final Function()? onGeneratePressed;

  const GenerateInput({super.key, this.controller, this.onGeneratePressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 420.r,
      height: 60.r,
      decoration: BoxDecoration(
        color: kTertiaryColor,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.r),
            child: Icon(Icons.search, size: 20.r, color: kSecondaryColor),
          ),
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Type or paste here...',
                border: InputBorder.none,
                hintStyle: AppStyles.bodyText4.copyWith(color: kGray2),
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 7.r),
            child: GenerateReplyButton(onPressed: onGeneratePressed),
          ),
        ],
      ),
    );
  }
}
