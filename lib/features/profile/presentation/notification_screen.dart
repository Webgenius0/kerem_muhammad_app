import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_appbar.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';
import 'package:flutter_switch/flutter_switch.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  bool workoutreminder = true;

  void toggleWorkoutReminder() {
    setState(() {
      workoutreminder = !workoutreminder;
    });
  }

  bool workoutTips = true;

  void toggleWorkoTips() {
    setState(() {
      workoutTips = !workoutTips;
    });
  }

  bool updateApp = true;

  void toggleUpdateApp() {
    setState(() {
      updateApp = !updateApp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        onTap: () {
          NavigationService.goBack;
        },
        svgimg: AppIcons.arrowleft,
        title: 'Notification',
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: AppColors.cFFFFFF,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(20),
                      offset: Offset(0, 4),
                      blurRadius: 20,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                padding: EdgeInsets.all(16.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UIHelper.verticalSpace(8.h),
                    Text(
                      'Push Notification',
                      style: TextFontStyle.txtfontstyle16w600c212121,
                    ),
                    UIHelper.verticalspace32,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Workout reminders',
                          style: TextFontStyle.txtfontstyle14w500c212121,
                        ),
                        FlutterSwitch(
                          height: 18.h,
                          width: 40.w,
                          toggleSize: 18.h,
                          padding: 2.0,
                          value: workoutreminder,
                          activeColor: AppColors.primaryColor,
                          inactiveColor: AppColors.cC4CDD5,
                          onToggle: (value) {
                            toggleWorkoutReminder();
                          },
                        ),
                      ],
                    ),

                    UIHelper.verticalspace24,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Workout tips',
                          style: TextFontStyle.txtfontstyle14w500c212121,
                        ),
                        FlutterSwitch(
                          height: 18.h,
                          width: 40.w,
                          toggleSize: 18.h,
                          padding: 2.0,
                          value: workoutTips,
                          activeColor: AppColors.primaryColor,
                          inactiveColor: AppColors.cC4CDD5,
                          onToggle: (value) {
                            toggleWorkoTips();
                          },
                        ),
                      ],
                    ),

                    UIHelper.verticalspace24,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Update app',
                          style: TextFontStyle.txtfontstyle14w500c212121,
                        ),
                        FlutterSwitch(
                          height: 16.h,
                          width: 38.w,
                          toggleSize: 18.h,
                          padding: 2.0,
                          value: updateApp,
                          activeColor: AppColors.primaryColor,
                          inactiveColor: AppColors.cC4CDD5,
                          onToggle: (value) {
                            toggleUpdateApp();
                          },
                        ),
                      ],
                    ),

                    UIHelper.verticalSpace(8.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
