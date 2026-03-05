import 'package:flutter/material.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarycolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Center(
          //   child: SvgPicture.asset(
          //     AppIcons.fixzo,
          //     colorFilter: ColorFilter.mode(AppColors.cFFFFFF, BlendMode.srcIn),
          //   ),
          // ),
        ],
      ),
    );
  }
}
