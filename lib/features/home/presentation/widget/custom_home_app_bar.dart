import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/cached_network_image_widget.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomCustomerAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomCustomerAppBar({
    super.key,
    required this.imageurl,
    required this.userName,
    required this.message,
    required this.onTapRewardicon,
    required this.onTapRoboIcon,
  });

  final String imageurl;
  final String userName;
  final String message;
  final VoidCallback onTapRewardicon;
  final VoidCallback onTapRoboIcon;

  @override
  Size get preferredSize => Size.fromHeight(58.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.cF9FAFB,
      automaticallyImplyLeading: false,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(260.r),
                      child: CachedNetworkImageWidget(
                        imgUrl: imageurl,
                        height: 40.h,
                        width: 40.w,
                      ),
                    ),
                    UIHelper.horizontalspace12,

                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: 4.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello, $userName",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                              ),
                            ),
                            UIHelper.verticalSpace(4.h),
                            Text(
                              message,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              UIHelper.horizontalSpace(10.w),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: onTapRoboIcon,
                    child: _buildIconButton(AppIcons.robo, AppColors.cFF5722),
                  ),
                  UIHelper.horizontalSpace(8.w),
                  GestureDetector(
                    onTap: onTapRewardicon,
                    child: _buildIconButton(AppIcons.reward, AppColors.c1A1A7E),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconButton(String icon, Color bgColor) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: bgColor),
      padding: EdgeInsets.all(8.sp),
      child: SvgPicture.asset(icon, height: 20.h, width: 20.w),
    );
  }
}
