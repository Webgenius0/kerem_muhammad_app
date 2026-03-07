import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomOnboardingFiveTextWidget extends StatelessWidget {
  const CustomOnboardingFiveTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          textAlign: TextAlign.center,
          'When is your birthyear?',
          style: TextFontStyle.txtfontstyle24w700c212121,
        ),
        UIHelper.verticalSpace(20.h),
        Text(
          textAlign: TextAlign.center,
          'Please enter your birth year to improve your experience!',
          style: TextFontStyle.txtfontstyle15w400c212121,
        ),
      ],
    );
  }
}
