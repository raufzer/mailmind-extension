import 'package:flutter/material.dart';
import 'package:mail_mind_extension/core/shared/widgets/background_image_with_gradient.dart';
import 'package:mail_mind_extension/core/utils/app_assets.dart';
import 'package:mail_mind_extension/core/shared/widgets/headline_one.dart';
import 'package:mail_mind_extension/features/welcome/presentation/views/widgets/google_connect_button.dart';

class WelcomeScreenBody extends StatelessWidget {
  const WelcomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          const Positioned.fill(
            child: BackgroundImageWithGradient(
              image: AssetsData.thumbImage3,
              height: 800,
              width: 600,
              opacityRight: 0.7,
              opacityLeft: 0.3,
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const HeadlineOne(
                  text: 'Welcome to MailMind Smarter Email, Faster Decisions.',
                ),
                const SizedBox(height: 20),
                const GoogleConnectButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
