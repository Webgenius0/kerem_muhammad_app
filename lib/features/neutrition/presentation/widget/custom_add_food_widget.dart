import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_text_field.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomAddFoodWidget extends StatelessWidget {
  const CustomAddFoodWidget({
    super.key,
    required this.foodController,
    required this.protinController,
    required this.caloriesController,
    required this.carbsController,
    required this.fatController,
  });
  final TextEditingController foodController;
  final TextEditingController protinController;
  final TextEditingController caloriesController;
  final TextEditingController carbsController;
  final TextEditingController fatController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UIHelper.verticalspace16,

        Text('Food name', style: TextFontStyle.txtfontstyle14w500c212121),
        UIHelper.verticalSpace(8.h),
        CustomTextField(
          controller: foodController,
          hintText: 'Type here',
          fillColor: AppColors.cF9FAFB,
          borderColor: AppColors.cDFE3E8,
          borderRadius: 8.r,
          inputAction: TextInputAction.next,
        ),

        UIHelper.verticalspace16,
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Protein (g)',
                    style: TextFontStyle.txtfontstyle14w500c212121,
                  ),
                  UIHelper.verticalSpace(8.h),
                  CustomTextField(
                    controller: protinController,
                    hintText: 'Type here',
                    fillColor: AppColors.cF9FAFB,
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
                    'calories (kcal)',
                    style: TextFontStyle.txtfontstyle14w500c212121,
                  ),
                  UIHelper.verticalSpace(8.h),
                  CustomTextField(
                    controller: caloriesController,
                    hintText: 'Type here',
                    fillColor: AppColors.cF9FAFB,
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
                    'Carbs (g)',
                    style: TextFontStyle.txtfontstyle14w500c212121,
                  ),
                  UIHelper.verticalSpace(8.h),
                  CustomTextField(
                    controller: carbsController,
                    hintText: 'Type here',
                    fillColor: AppColors.cF9FAFB,
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
                    'Fat (g)',
                    style: TextFontStyle.txtfontstyle14w500c212121,
                  ),
                  UIHelper.verticalSpace(8.h),
                  CustomTextField(
                    controller: fatController,
                    hintText: 'Type here',
                    fillColor: AppColors.cF9FAFB,
                    borderColor: AppColors.cDFE3E8,
                    borderRadius: 8.r,
                    inputAction: TextInputAction.done,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
