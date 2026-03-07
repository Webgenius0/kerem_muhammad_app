// ignore_for_file: unreachable_switch_case

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:kerem_muhammad_app/features/auth/login_sign_up/presentation/login_sign_up_screen.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/get_started_screen.dart';
import 'package:kerem_muhammad_app/navigation_screen.dart';

final class Routes {
  static final Routes _routes = Routes._internal();
  Routes._internal();
  static Routes get instance => _routes;

  static const String navigatiseScreen = '/navigatiseScreen';
  static const String loginSignupScreen = '/loginSignupScreen';
  //========================= onboarding ======================
  static const String getstartedScreen = '/getstartedScreen';
}

final class RouteGenerator {
  static final RouteGenerator _routeGenerator = RouteGenerator._internal();
  RouteGenerator._internal();
  static RouteGenerator get instance => _routeGenerator;

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.navigatiseScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const ScreenTitle(widget: NavigationScreen()),
                settings: settings,
              )
            : CupertinoPageRoute(
                builder: (context) => const NavigationScreen(),
              );

      case Routes.loginSignupScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const ScreenTitle(widget: LoginSignUpScreen()),
                settings: settings,
              )
            : CupertinoPageRoute(
                builder: (context) => const LoginSignUpScreen(),
              );

      case Routes.getstartedScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const ScreenTitle(widget: GetStartedScreen()),
                settings: settings,
              )
            : CupertinoPageRoute(
                builder: (context) => const GetStartedScreen(),
              );

      default:
        return null;
    }
  }
}

class _FadedTransitionRoute extends PageRouteBuilder {
  final Widget widget;
  @override
  final RouteSettings settings;

  _FadedTransitionRoute({required this.widget, required this.settings})
    : super(
        settings: settings,
        reverseTransitionDuration: const Duration(milliseconds: 1),
        pageBuilder:
            (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) {
              return widget;
            },
        transitionDuration: const Duration(milliseconds: 1),
        transitionsBuilder:
            (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) {
              return FadeTransition(
                opacity: CurvedAnimation(parent: animation, curve: Curves.ease),
                child: child,
              );
            },
      );
}

class ScreenTitle extends StatelessWidget {
  final Widget widget;

  const ScreenTitle({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: .5, end: 1),
      duration: const Duration(milliseconds: 500),
      curve: Curves.bounceIn,
      builder: (context, value, child) {
        return Opacity(opacity: value, child: child);
      },
      child: widget,
    );
  }
}
