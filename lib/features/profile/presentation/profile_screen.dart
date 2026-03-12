import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/features/profile/presentation/widget/custom_personal_information_card.dart';
import 'package:kerem_muhammad_app/features/profile/presentation/widget/custom_profile_card.dart';
import 'package:kerem_muhammad_app/features/profile/presentation/widget/custom_profile_top_section_widget.dart';
import 'package:kerem_muhammad_app/helpers/all_routes.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(60.h),

            CustomProfileTopSectionWidget(
              imageUrl:
                  "https://images.unsplash.com/photo-1546961329-78bef0414d7c?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              name: 'Srity Chowdhury',
              mail: "info@Srity.com",
              age: 'Age - 25',
              onTapSetting: () {
                NavigationService.navigateTo(Routes.settingsScreen);
              },
            ),
            UIHelper.verticalSpace(26.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Expanded(
                    child: CustomProfileCard(
                      title: 'Workouts',
                      numbners: '72',
                      numberstextColor: AppColors.primaryColor,
                    ),
                  ),
                  UIHelper.horizontalspace12,
                  Expanded(
                    child: CustomProfileCard(
                      title: 'Days active',
                      numbners: '48',
                      numberstextColor: AppColors.c4CAF50,
                    ),
                  ),
                ],
              ),
            ),

            UIHelper.verticalspace12,

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Expanded(
                    child: CustomProfileCard(
                      title: 'Calories burned',
                      numbners: '18,430',
                      numberstextColor: AppColors.cFF5722,
                    ),
                  ),
                  UIHelper.horizontalspace12,
                  Expanded(
                    child: CustomProfileCard(
                      title: 'Day streak',
                      numbners: '12',
                      numberstextColor: AppColors.c770CEA,
                    ),
                  ),
                ],
              ),
            ),

            UIHelper.verticalspace24,

            CustomPersonalInformationCard(
              title: 'Personal Information',
              height: '167 cm',
              currentweight: '73.2 kg',
              goalWeight: '70 kg',
              activitylecel: 'Very Active',
            ),

            UIHelper.verticalSpace(100.h),
          ],
        ),
      ),
    );
  }
}
