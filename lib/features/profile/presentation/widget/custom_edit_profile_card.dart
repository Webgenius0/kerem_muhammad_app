import 'dart:io';
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
    this.selectedImage,
    required this.birthYearController,
    required this.heightController,
    required this.activityController,
    required this.currentWrightController,
    required this.goalWeightController,
    required this.onTapEditprofile,
  });

  final String imageUrl;
  final File? selectedImage;
  final TextEditingController birthYearController;
  final TextEditingController heightController;
  final TextEditingController activityController;
  final TextEditingController currentWrightController;
  final TextEditingController goalWeightController;
  final VoidCallback onTapEditprofile;

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
              offset: const Offset(0, 4),
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
                    child: selectedImage != null
                        ? Image.file(
                            selectedImage!,
                            height: 64.h,
                            width: 64.w,
                            fit: BoxFit.cover,
                          )
                        : CachedNetworkImageWidget(
                            imgUrl: imageUrl,
                            height: 64.h,
                            width: 64.w,
                          ),
                  ),
                  Positioned(
                    bottom: 4.h,
                    right: -4.w,
                    child: GestureDetector(
                      onTap: onTapEditprofile,
                      child: SvgPicture.asset(
                        AppIcons.editprofileblue,
                        height: 20.h,
                        width: 20.w,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            UIHelper.verticalspace24,
            // Activity and Height Row
            Row(
              children: [
                _buildFieldColumn('Activity Level', activityController),
                UIHelper.horizontalspace16,
                _buildFieldColumn('Height', heightController),
              ],
            ),
            UIHelper.verticalspace16,
            // Weight Row
            Row(
              children: [
                _buildFieldColumn('Current Weight', currentWrightController),
                UIHelper.horizontalspace16,
                _buildFieldColumn('Goal Weight', goalWeightController),
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

  // Helper to keep the code clean
  Widget _buildFieldColumn(String label, TextEditingController controller) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextFontStyle.txtfontstyle14w500c212121),
          UIHelper.verticalSpace(8.h),
          CustomTextField(
            controller: controller,
            hintText: 'Type here',
            fillColor: AppColors.cFFFFFF,
            borderColor: AppColors.cDFE3E8,
            borderRadius: 8.r,
            inputAction: TextInputAction.next,
          ),
        ],
      ),
    );
  }
}
