// ignore_for_file: deprecated_member_use, unused_import, prefer_const_constructors
import 'dart:developer';
import 'package:auto_animated/auto_animated.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/constants/app_constants.dart';
import 'package:kerem_muhammad_app/constants/custome_theme.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/onboarding_screen_eight.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/onboarding_screen_five.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/onboarding_screen_nine.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/onboarding_screen_one.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/onboarding_screen_ten.dart';
import 'package:kerem_muhammad_app/helpers/all_routes.dart';
import 'package:kerem_muhammad_app/helpers/di.dart';
import 'package:kerem_muhammad_app/helpers/helper_methods.dart';
import 'package:kerem_muhammad_app/helpers/language.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/register_provider.dart';
import 'package:kerem_muhammad_app/loading_screen.dart';
import 'package:kerem_muhammad_app/networks/dio/dio.dart';
import 'package:provider/provider.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:device_preview/device_preview.dart';

// import 'package:device_preview/device_preview.dart';
Future<void> backgroundHandler(RemoteMessage message) async {}
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  await GetStorage.init();
  diSetup();
  // initiInternetChecker();
  DioSingleton.instance.create();
  // FirebaseMessaging.onBackgroundMessage(backgroundHandler);
  // NotificationService().initNotification();
  try {
    await FlutterDisplayMode.setHighRefreshRate();
  } catch (e) {
    log('Error setting high refresh rate: $e');
  }
  runApp(const MyApp());
  // runApp(
  //   DevicePreview(enabled: !kReleaseMode, builder: (context) => const MyApp()),
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    rotation();
    setInitValue();
    return SafeArea(
      top: false,
      child: MultiProvider(
        providers: providers,
        child: AnimateIfVisibleWrapper(
          showItemInterval: const Duration(milliseconds: 150),
          child: PopScope(
            canPop: false,
            onPopInvoked: (bool didPop) async {
              showMaterialDialog(context);
            },
            child: LayoutBuilder(
              builder: (context, constraints) {
                return UtillScreenMobile();
              },
            ),
          ),
        ),
      ),
    );
  }
}

class UtillScreenMobile extends StatelessWidget {
  final box = GetStorage();
  UtillScreenMobile({super.key});
  @override
  Widget build(BuildContext context) {
    String language = appData.read(kKeyLanguage) ?? 'en';
    // String countryCode = appData.read(kKeyCountryCode) ?? 'US';
    return ScreenUtilInit(
      designSize: const Size(369, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return PopScope(
          canPop: false,
          onPopInvoked: (bool didPop) async {
            showMaterialDialog(context);
          },
          child: GetMaterialApp(
            showPerformanceOverlay: false,
            theme: ThemeData(
              scaffoldBackgroundColor: AppColors.cFFFFFF,
              primarySwatch: CustomTheme.kToDark,
              useMaterial3: false,
            ),
            debugShowCheckedModeBanner: false,
            translations: LocalString(),
            locale: Locale(language),
            fallbackLocale: const Locale('en'),
            builder: (context, widget) {
              return MediaQuery(data: MediaQuery.of(context), child: widget!);
            },
            navigatorKey: NavigationService.navigatorKey,
            onGenerateRoute: RouteGenerator.generateRoute,
            home: const OnboardingScreenTen(),
          ),
        );
      },
    );
  }
}
