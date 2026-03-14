import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/cached_network_image_widget.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_text_field.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomEditProfileCard extends StatelessWidget {
  const CustomEditProfileCard({
    super.key,
    required this.imageUrl,

    required this.birthYearController,
    required this.heightController,
    required this.activityController,
    required this.currentWrightController,
    required this.goalWeightController,
  });
  final String imageUrl;

  final TextEditingController birthYearController;
  final TextEditingController heightController;
  final TextEditingController activityController;
  final TextEditingController currentWrightController;
  final TextEditingController goalWeightController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.cFFFFFF,
          borderRadius: BorderRadius.circular(16.r),
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
            UIHelper.verticalspace16,
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(260.r),
                    child: CachedNetworkImageWidget(
                      imgUrl: imageUrl,
                      height: 64.h,
                      width: 64.w,
                    ),
                  ),

                  Positioned(
                    top: -6.h,
                    right: 0.w,
                    child: SvgPicture.asset(AppIcons.editprofile),
                  ),
                ],
              ),
            ),

            UIHelper.verticalspace24,
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Activity Level',
                        style: TextFontStyle.txtfontstyle14w500c212121,
                      ),
                      UIHelper.verticalSpace(8.h),

                      CustomTextField(
                        controller: activityController,
                        hintText: 'Type here',
                        fillColor: AppColors.cFFFFFF,
                        borderColor: AppColors.cDFE3E8,
                        borderRadius: 8.r,
                        inputAction: TextInputAction.next,
                      ),
                    ],
                  ),
                ),
                UIHelper.horizontalspace16,

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Height',
                        style: TextFontStyle.txtfontstyle14w500c212121,
                      ),
                      UIHelper.verticalSpace(8.h),

                      CustomTextField(
                        controller: heightController,
                        hintText: 'Type here',
                        fillColor: AppColors.cFFFFFF,
                        borderColor: AppColors.cDFE3E8,
                        borderRadius: 8.r,
                        inputAction: TextInputAction.next,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            UIHelper.verticalspace16,

            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Current Weight',
                        style: TextFontStyle.txtfontstyle14w500c212121,
                      ),
                      UIHelper.verticalSpace(8.h),

                      CustomTextField(
                        controller: currentWrightController,
                        hintText: 'Type here',
                        fillColor: AppColors.cFFFFFF,
                        borderColor: AppColors.cDFE3E8,
                        borderRadius: 8.r,
                        inputAction: TextInputAction.next,
                      ),
                    ],
                  ),
                ),
                UIHelper.horizontalspace16,

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Goal Weight',
                        style: TextFontStyle.txtfontstyle14w500c212121,
                      ),
                      UIHelper.verticalSpace(8.h),

                      CustomTextField(
                        controller: goalWeightController,
                        hintText: 'Type here',
                        fillColor: AppColors.cFFFFFF,
                        borderColor: AppColors.cDFE3E8,
                        borderRadius: 8.r,
                        inputAction: TextInputAction.next,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            UIHelper.verticalspace16,

            Text(
              'Birthday Year',
              style: TextFontStyle.txtfontstyle14w500c212121,
            ),
            UIHelper.verticalSpace(8.h),
            CustomTextField(
              controller: birthYearController,
              hintText: 'Type here',
              fillColor: AppColors.cFFFFFF,
              borderColor: AppColors.cDFE3E8,
              borderRadius: 8.r,
              inputAction: TextInputAction.done,
            ),
          ],
        ),
      ),
    );
  }
}
