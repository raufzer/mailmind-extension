import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mail_mind_extension/core/theme/app_colors.dart';
import 'package:mail_mind_extension/core/theme/app_styles.dart';

class FeatureItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const FeatureItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(radius: 28.r, backgroundImage: AssetImage(imagePath)),
        SizedBox(width: 12.r),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppStyles.bodyText5.copyWith(color: Colors.black),
            ),
            Text(
              description,
              style: AppStyles.bodyText7.copyWith(color: kSecondaryColor),
            ),
          ],
        ),
      ],
    );
  }
}
