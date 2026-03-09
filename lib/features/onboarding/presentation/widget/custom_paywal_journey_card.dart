import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/common_widgets/cached_network_image_widget.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomPaywalJourneyCard extends StatelessWidget {
  const CustomPaywalJourneyCard({
    super.key,
    required this.onTap,
    required this.imageUrl,
    required this.name,
    required this.subtitle,
    this.ratingone,
    this.ratingtwo,
    this.ratingthree,
    this.ratingfour,
    this.ratingfive,
  });

  final VoidCallback onTap;
  final String imageUrl;
  final String name;
  final String subtitle;
  final String? ratingone;
  final String? ratingtwo;
  final String? ratingthree;
  final String? ratingfour;
  final String? ratingfive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Container(
          width: 290.w,
          decoration: BoxDecoration(
            color: AppColors.cFFFFFF,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.r),
                      topRight: Radius.circular(16.r),
                    ),
                    child: CachedNetworkImageWidget(
                      imgUrl: imageUrl,
                      height: 194.h,
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                        vertical: 5.h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.r),
                        ),
                        color: AppColors.primaryColor,
                      ),
                      child: Center(
                        child: Text(
                          'After',
                          style: TextFontStyle.txtfontstyle15w600cFFFFFworksans,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                        vertical: 5.h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16.r),
                        ),
                        color: AppColors.cFF5722,
                      ),
                      child: Center(
                        child: Text(
                          'Before',
                          style: TextFontStyle.txtfontstyle15w600cFFFFFworksans,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextFontStyle.txtfontstyle15w600c0000worksans,
                    ),
                    UIHelper.verticalSpace(6.h),
                    Row(
                      children: [
                        if (ratingone != null) SvgPicture.asset(ratingone!),
                        if (ratingtwo != null) SvgPicture.asset(ratingtwo!),
                        if (ratingthree != null) SvgPicture.asset(ratingthree!),
                        if (ratingfour != null) SvgPicture.asset(ratingfour!),
                        if (ratingfive != null) SvgPicture.asset(ratingfive!),
                      ],
                    ),
                    UIHelper.verticalspace16,
                    Text(
                      subtitle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: TextFontStyle.txtfontstyle13w400c5C5C5Cworksans,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
