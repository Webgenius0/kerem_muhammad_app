import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';

class AlternativeCredentialWidget extends StatelessWidget {
  final String title;
  const AlternativeCredentialWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1.h,
            decoration: const BoxDecoration(color: AppColors.cFFFFFF),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Text(
            title,
            style: TextFontStyle.txtfontstyle26w600cFFFFF.copyWith(
              color: AppColors.cFFFFFF,
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 1.h,
            decoration: const BoxDecoration(color: AppColors.cFFFFFF),
          ),
        ),
      ],
    );
  }
}
