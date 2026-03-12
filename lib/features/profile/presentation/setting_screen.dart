import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_appbar.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_button.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/features/profile/presentation/widget/custom_settings_card.dart';
import 'package:kerem_muhammad_app/helpers/all_routes.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        onTap: () {
          NavigationService.goBack;
        },
        svgimg: AppIcons.arrowleft,
        appbarColor: AppColors.cF9FAFB,
        title: 'Setting',
      ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalspace16,
            CustomSettingsCard(
              onTapEditprofile: () {},
              onTapNotification: () {
                NavigationService.navigateTo(Routes.notificationScreen);
              },
              onTapSubscription: () {},
              onTapHelpSupport: () {},
            ),

            UIHelper.verticalspace24,

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomButton(
                onTap: () {
                  showDialog(
                    barrierDismissible: true,
                    context: context,
                    builder: (context) => Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(24.sp),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.r),
                          color: AppColors.cFFFFFF,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                              AppIcons.logout,
                              height: 40.h,
                              width: 40.w,
                            ),

                            UIHelper.verticalspace16,
                            Text(
                              'Sign Out',
                              style: TextFontStyle.txtfontstyle18w700c212121,
                            ),
                            UIHelper.verticalSpace(8.h),
                            Text(
                              textAlign: TextAlign.center,
                              'Securely end your session and sign out of your account.',
                              style: TextFontStyle.txtfontstyle14w400c637381,
                            ),
                            UIHelper.verticalspace16,
                            Row(
                              children: [
                                Expanded(
                                  child: CustomButton(
                                    onTap: () {
                                      NavigationService.goBack;
                                    },
                                    text: 'Cancel',
                                    bgColor: AppColors.cFFFFFF,
                                    borderColor: AppColors.c919EAB,
                                    textColor: AppColors.c919EAB,
                                  ),
                                ),

                                UIHelper.horizontalspace12,

                                Expanded(
                                  child: CustomButton(
                                    onTap: () {},
                                    text: 'Sign Out',
                                    bgColor: AppColors.cF44336,
                                    borderColor: AppColors.cF44336,
                                    textColor: AppColors.cFFFFFF,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                text: 'Sign Out',
                bgColor: AppColors.cF44336,
                borderColor: AppColors.cF44336,
                borderRadius: 12.r,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
