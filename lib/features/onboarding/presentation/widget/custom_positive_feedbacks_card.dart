import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/common_widgets/cached_network_image_widget.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomPositiveFeedbacksCard extends StatelessWidget {
  const CustomPositiveFeedbacksCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.feedback,
  });

  final String imageUrl;
  final String name;
  final String feedback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withAlpha(180),
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(09),
              offset: const Offset(0, 2),
              blurRadius: 20,
              spreadRadius: 0,
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 20.h),

        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(6.sp),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(260.r),
                color: AppColors.cFFE4DB,
              ),
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(260.r),
                  child: CachedNetworkImageWidget(
                    imgUrl: imageUrl,
                    height: 78.h,
                    width: 78.w,
                  ),
                ),
              ),
            ),
            UIHelper.horizontalspace16,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextFontStyle.txtfontstyle12w600c3F3F3F,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  UIHelper.verticalSpace(10.h),
                  Text(
                    feedback,
                    style: TextFontStyle.txtfontstyle16w600c414141,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
