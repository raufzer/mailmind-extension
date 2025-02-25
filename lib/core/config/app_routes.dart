// import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static const kConnectingView = '/connectingView';
  static const kMainView = '/mainView';
  static const kSettingsView = '/settingsView';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      // GoRoute(
      //   path: '/',
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const ConnectingView();
      //   },
      // ),
      // GoRoute(
      //   path: kMainView,
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const MainView();
      //   },
      // ),
      // GoRoute(
      //   path: kSettingsView,
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const SettingsView();
      //   },
      // ),
    ],
  );
}
