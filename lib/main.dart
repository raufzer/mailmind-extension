import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mail_mind_extension/core/config/app_routes.dart';
import 'package:mail_mind_extension/core/theme/app_colors.dart';

void main() {
  runApp(const MailMindExtension());
}

class MailMindExtension extends StatelessWidget {
  const MailMindExtension({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(600, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'MailMind',
          routerConfig: AppRouters.router,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kTertiaryColor,
            textTheme: GoogleFonts.interTextTheme(
              ThemeData.dark().textTheme.apply(
                bodyColor: kAccentColor,
                displayColor: kAccentColor,
              ),
            ),
          ),
        );
      },
    );
  }
}
