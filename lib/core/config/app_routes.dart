import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mail_mind_extension/features/welcome/presentation/views/welcome_screen.dart';

abstract class AppRouters {
  static const kWelcomeScreen = '/welcomeScreen';
  static const kMainScreen = '/mainScreen';
  static const kSettingsScreen = '/settingsScreen';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const WelcomeScreen();
        },
      ),
      // GoRoute(
      //   path: kMainScreen,
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const MainScreen();
      //   },
      // ),
      // GoRoute(
      //   path: kSettingsScreen,
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const SettingsScreen();
      //   },
      // ),
    ],
  );
}
