import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static const kWelcomeScreen = '/welcomeScreen';
  static const kMainScreen = '/mainScreen';
  static const kSettingsScreen = '/settingsScreen';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      // GoRoute(
      //   path: '/',
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const WelcomeScreen();
      //   },
      // ),
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
