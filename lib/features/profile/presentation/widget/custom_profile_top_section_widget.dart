import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/cached_network_image_widget.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomProfileTopSectionWidget extends StatelessWidget {
  const CustomProfileTopSectionWidget({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.mail,
    required this.age,
    required this.onTapSetting,
  });

  final String imageUrl;
  final String name;
  final String mail;
  final String age;
  final VoidCallback onTapSetting;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(color: Colors.transparent, height: 20.h, width: 20.w),

              GestureDetector(
                onTap: onTapSetting,
                child: SvgPicture.asset(AppIcons.setting),
              ),
            ],
          ),

          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(260.r),

              child: CachedNetworkImageWidget(
                imgUrl: imageUrl,
                height: 64.h,
                width: 64.w,
              ),
            ),
          ),

          UIHelper.verticalspace12,
          Center(
            child: Text(name, style: TextFontStyle.txtfontstyle20w700c212121),
          ),
          UIHelper.verticalSpace(10.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppIcons.mail),
              UIHelper.horizontalSpace(8.w),
              Text(mail, style: TextFontStyle.txtfontstyle14w400c637381),
            ],
          ),

          UIHelper.verticalSpace(10.h),
          Center(
            child: Text(age, style: TextFontStyle.txtfontstyle14w400c637381),
          ),
        ],
      ),
    );
  }
}
