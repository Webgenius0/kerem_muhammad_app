import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CutomYourprogressTextWidget extends StatelessWidget {
  const CutomYourprogressTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UIHelper.verticalSpace(50.h),
        Center(
          child: Text(
            textAlign: TextAlign.center,
            'Your Progress',
            style: TextFontStyle.txtfontstyle20w700c212121,
          ),
        ),
        UIHelper.verticalSpace(8.h),

        Center(
          child: Text(
            textAlign: TextAlign.center,
            "Look what you've achieved so far! 🎉",
            style: TextFontStyle.txtfontstyle14w400c686868,
          ),
        ),
      ],
    );
  }
}
