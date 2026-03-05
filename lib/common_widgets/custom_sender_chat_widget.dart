import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomSenderChatWidget extends StatelessWidget {
  const CustomSenderChatWidget({
    super.key,
    required this.messege,

    required this.messageContainerColor,
    required this.borderColor,
    required this.messegeTextColor,
  });

  final String messege;

  final Color messageContainerColor;
  final Color borderColor;

  final Color messegeTextColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 60.w),
            child: Container(
              decoration: BoxDecoration(
                color: messageContainerColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24),
                  topLeft: Radius.circular(24.r),
                  bottomLeft: Radius.circular(24.r),
                ),
                border: Border.all(color: borderColor, width: 1.w),
              ),
              padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    messege,
                    style: TextFontStyle.txtfontstyle24w500primaryColor,
                  ),
                  UIHelper.verticalSpace(4.h),
                ],
              ),
            ),
          ),
        ),
        UIHelper.horizontalspace12,
      ],
    );
  }
}
