import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/assets_helper/app_image.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_appbar.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_button.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class WorkoutsTimeScreen extends StatefulWidget {
  const WorkoutsTimeScreen({super.key});

  @override
  State<WorkoutsTimeScreen> createState() => _WorkoutsTimeScreenState();
}

class _WorkoutsTimeScreenState extends State<WorkoutsTimeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        onTap: () {
          NavigationService.goBack;
        },
        svgimg: AppIcons.arrowleft,
        appbarColor: AppColors.cF9FAFB,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            UIHelper.verticalSpace(70.h),
            Text('1.00', style: TextFontStyle.txtfontstyle48w800c212121),
            UIHelper.verticalspace24,
            Image.asset(AppImages.workouttimesplank),
            UIHelper.verticalSpace(100.h),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    onTap: () {},
                    text: 'Skip',
                    bgColor: AppColors.cF9FAFB,
                    borderColor: AppColors.cC4CDD5,
                    textColor: AppColors.c919EAB,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(AppIcons.resume),
                  ),
                ),
                Expanded(
                  child: CustomButton(
                    onTap: () {},
                    text: 'Done',
                    bgColor: AppColors.primaryColor,
                    borderColor: AppColors.primaryColor,
                    textColor: AppColors.cFFFFFF,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
