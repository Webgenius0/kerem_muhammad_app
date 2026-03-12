import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/cached_network_image_widget.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomDailogNeutritionFoodCard extends StatelessWidget {
  const CustomDailogNeutritionFoodCard({
    super.key,
    required this.foodimageUrl,
    required this.foodName,
    required this.calory,
    required this.protin,
    required this.borderColor,
    required this.onTap,
  });
  final String foodimageUrl;
  final String foodName;
  final String calory;
  final String protin;
  final Color borderColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: AppColors.cF8F8F8,
          border: Border.all(color: borderColor, width: 1.w),
        ),
        padding: EdgeInsets.all(12.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: CachedNetworkImageWidget(
                      imgUrl: foodimageUrl,
                      height: 50.h,
                      width: 58.w,
                    ),
                  ),
                  UIHelper.horizontalspace12,

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          foodName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style:
                              TextFontStyle.txtfontstyle14w600c212121montserrat,
                        ),
                        UIHelper.verticalSpace(8.h),
                        Text(
                          "$calory $protin",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style:
                              TextFontStyle.txtfontstyle14w400c4B5563montserrat,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SvgPicture.asset(AppIcons.arrowright, width: 16.w),
          ],
        ),
      ),
    );
  }
}
