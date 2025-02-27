import 'package:flutter/material.dart';

import 'package:mail_mind_extension/core/theme/app_colors.dart';
import 'package:mail_mind_extension/core/theme/app_styles.dart';

class HeadlineOne extends StatelessWidget {
  final String text;
  const HeadlineOne({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.headline1.copyWith(color: kTertiaryColor),
      textAlign: TextAlign.center,
    );
  }
}
