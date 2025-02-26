import 'package:flutter/material.dart';
import 'package:mail_mind_extension/core/theme/app_colors.dart';
import 'package:mail_mind_extension/core/theme/app_styles.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome to MailMind Smarter Email, Faster Decisions.',
      style: AppStyles.headline1.copyWith(color: kTertiaryColor),
      textAlign: TextAlign.center,
    );
  }
}