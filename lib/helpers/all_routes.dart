// ignore_for_file: unreachable_switch_case

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:kerem_muhammad_app/features/auth/login_sign_up/presentation/login_sign_up_screen.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/creating_your_programs_screen.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/get_started_screen.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/long_term_result_screen.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/onboarding_screen_eight.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/onboarding_screen_eleven.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/onboarding_screen_five.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/onboarding_screen_four.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/onboarding_screen_nine.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/onboarding_screen_one.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/onboarding_screen_seven.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/onboarding_screen_six.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/onboarding_screen_ten.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/onboarding_screen_three.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/onboarding_screen_twelve.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/oneboarding_screen_two.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/paywal_screen.dart';
import 'package:kerem_muhammad_app/navigation_screen.dart';

final class Routes {
  static final Routes _routes = Routes._internal();
  Routes._internal();
  static Routes get instance => _routes;

  static const String navigatiseScreen = '/navigatiseScreen';
  static const String loginSignupScreen = '/loginSignupScreen';
  //========================= onboarding ======================
  static const String getstartedScreen = '/getstartedScreen';
  static const String onboardingScreenOne = '/onboardingScreenOne';
  static const String onboardingScreenTwo = '/onboardingScreenTwo';
  static const String onboardingScreenThree = '/onboardingScreenThree';
  static const String onboardingScreenFour = '/onboardingScreenFour';
  static const String onboardingScreenFive = '/onboardingScreenFive';
  static const String onboardingScreenSix = '/onboardingScreenSix';
  static const String onboardingScreenSeven = '/onboardingScreenSeven';
  static const String onboardingScreenEight = '/onboardingScreenEight';
  static const String onboardingScreenNine = '/onboardingScreenNine';
  static const String onboardingScreenTen = '/onboardingScreenTen';
  static const String onboardingScreenEleven = '/onboardingScreenEleven';
  static const String onboardingScreenTwelve = '/onboardingScreenTwelve';
  static const String lognTermsResult = '/lognTermsResult';
  static const String paywalScreen = '/paywalScreen';
  static const String creatingYourProgramsScreen =
      '/creatingYourProgramsScreen';
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
      case Routes.onboardingScreenOne:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const ScreenTitle(widget: OnboardingScreenOne()),
                settings: settings,
              )
            : CupertinoPageRoute(
                builder: (context) => const OnboardingScreenOne(),
              );
      case Routes.onboardingScreenTwo:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const ScreenTitle(widget: OneboardingScreenTwo()),
                settings: settings,
              )
            : CupertinoPageRoute(
                builder: (context) => const OneboardingScreenTwo(),
              );
      case Routes.onboardingScreenThree:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const ScreenTitle(widget: OnboardingScreenThree()),
                settings: settings,
              )
            : CupertinoPageRoute(
                builder: (context) => const OnboardingScreenThree(),
              );

      case Routes.onboardingScreenFour:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const ScreenTitle(widget: OnboardingScreenFour()),
                settings: settings,
              )
            : CupertinoPageRoute(
                builder: (context) => const OnboardingScreenFour(),
              );

      case Routes.onboardingScreenFive:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const ScreenTitle(widget: OnboardingScreenFive()),
                settings: settings,
              )
            : CupertinoPageRoute(
                builder: (context) => const OnboardingScreenFive(),
              );
      case Routes.onboardingScreenSix:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const ScreenTitle(widget: OnboardingScreenSix()),
                settings: settings,
              )
            : CupertinoPageRoute(
                builder: (context) => const OnboardingScreenSix(),
              );
      case Routes.onboardingScreenSeven:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const ScreenTitle(widget: OnboardingScreenSeven()),
                settings: settings,
              )
            : CupertinoPageRoute(
                builder: (context) => const OnboardingScreenSeven(),
              );
      case Routes.onboardingScreenEight:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const ScreenTitle(widget: OnboardingScreenEight()),
                settings: settings,
              )
            : CupertinoPageRoute(
                builder: (context) => const OnboardingScreenEight(),
              );
      case Routes.onboardingScreenNine:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const ScreenTitle(widget: OnboardingScreenNine()),
                settings: settings,
              )
            : CupertinoPageRoute(
                builder: (context) => const OnboardingScreenNine(),
              );

      case Routes.onboardingScreenNine:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const ScreenTitle(widget: OnboardingScreenNine()),
                settings: settings,
              )
            : CupertinoPageRoute(
                builder: (context) => const OnboardingScreenNine(),
              );

      case Routes.onboardingScreenTen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const ScreenTitle(widget: OnboardingScreenTen()),
                settings: settings,
              )
            : CupertinoPageRoute(
                builder: (context) => const OnboardingScreenTen(),
              );

      case Routes.onboardingScreenEleven:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const ScreenTitle(widget: OnboardingScreenEleven()),
                settings: settings,
              )
            : CupertinoPageRoute(
                builder: (context) => const OnboardingScreenEleven(),
              );

      case Routes.onboardingScreenTwelve:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const ScreenTitle(widget: OnboardingScreenTwelve()),
                settings: settings,
              )
            : CupertinoPageRoute(
                builder: (context) => const OnboardingScreenTwelve(),
              );

      case Routes.lognTermsResult:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const ScreenTitle(widget: LongTermResultScreen()),
                settings: settings,
              )
            : CupertinoPageRoute(
                builder: (context) => const LongTermResultScreen(),
              );

      case Routes.paywalScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const ScreenTitle(widget: PaywalScreen()),
                settings: settings,
              )
            : CupertinoPageRoute(builder: (context) => const PaywalScreen());

      case Routes.creatingYourProgramsScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const ScreenTitle(widget: CreatingYourProgramsScreen()),
                settings: settings,
              )
            : CupertinoPageRoute(
                builder: (context) => const CreatingYourProgramsScreen(),
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
