import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomRewardAchivementsTextWidget extends StatelessWidget {
  const CustomRewardAchivementsTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        Center(
          child: Text(
            textAlign: TextAlign.center,
            'Rewards & Achievements 🏆',
            style: TextFontStyle.txtfontstyle20w700c212121,
          ),
        ),
        UIHelper.verticalSpace(8.h),

        Center(
          child: Text(
            textAlign: TextAlign.center,
            'Celebrate your fitness journey!',
            style: TextFontStyle.txtfontstyle14w400c6B7280montserrat,
          ),
        ),
      ],
    );
  }
}
