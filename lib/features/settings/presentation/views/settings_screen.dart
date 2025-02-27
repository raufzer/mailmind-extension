import 'package:flutter/material.dart';
import 'package:mail_mind_extension/features/settings/presentation/views/widgets/settings_screen_body.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SettingsScreenBody());
  }
}
