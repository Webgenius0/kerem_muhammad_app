import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomAIChatWidget extends StatelessWidget {
  const CustomAIChatWidget({
    super.key,
    required this.message,
    required this.messageTime,
    required this.messageContainerColor,
    required this.borderColor,
    required this.messageTextColor,
  });

  final String message;
  final String messageTime;
  final Color messageContainerColor;
  final Color borderColor;
  final Color messageTextColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, // Aligns bubble and time to the left
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: Padding(
                padding: EdgeInsets.only(right: 60.w),
                child: Container(
                  decoration: BoxDecoration(
                    color: messageContainerColor,
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: borderColor, width: 1.w),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 12.h,
                    horizontal: 16.w,
                  ),
                  child: Text(
                    message,
                    style: TextFontStyle.txtfontstyle14w400c161C24.copyWith(
                      color: messageTextColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        UIHelper.verticalSpace(6.h),
        Text(messageTime, style: TextFontStyle.txtfontstyle12w400c637381),
      ],
    );
  }
}
