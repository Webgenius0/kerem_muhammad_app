import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/common_widgets/cached_network_image_widget.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomLeaderboardRankCard extends StatelessWidget {
  final String imageurl;
  final String name;
  final String userName;
  final String score;
  final String icon;

  const CustomLeaderboardRankCard({
    super.key,
    required this.imageurl,
    required this.name,
    required this.userName,
    required this.score,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 6.h),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: AppColors.cFFFFFF,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(20),
              offset: const Offset(0, 4),
              blurRadius: 20,
            ),
          ],
        ),
        padding: EdgeInsets.all(16.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(300.r),
                    child: CachedNetworkImageWidget(
                      imgUrl: imageurl,
                      height: 50.h,
                      width: 50.w,
                    ),
                  ),
                  UIHelper.horizontalspace12,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextFontStyle.txtfontstyle14w600c212121,
                        ),
                        UIHelper.verticalSpace(8.h),
                        Text(
                          userName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextFontStyle.txtfontstyle12w400c637381,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            UIHelper.horizontalspace12,
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  score,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextFontStyle.txtfontstyle12w700c212121,
                ),
                UIHelper.verticalSpace(4.h),
                SvgPicture.asset(icon),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
