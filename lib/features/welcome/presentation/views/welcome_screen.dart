import 'package:flutter/material.dart';
import 'package:mail_mind_extension/features/welcome/presentation/views/widgets/welcome_screen_body.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WelcomeScreenBody(),
    );
  }
}