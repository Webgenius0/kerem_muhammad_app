import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/common_widgets/cached_network_image_widget.dart';
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
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: AppColors.cFFFFFF,
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.r),
                    topRight: Radius.circular(16.r),
                  ),
                  child: CachedNetworkImageWidget(
                    imgUrl: imageUrl,
                    width: MediaQuery.of(context).size.width,
                    height: 300.h,
                  ),
                ),

                Positioned(
                  bottom: 0,
                  right: 0.h,
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
                    child: Center(child: Text('After')),
                  ),
                ),

                Positioned(
                  bottom: 0,
                  right: 0.h,
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
                    child: Center(child: Text('Before')),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 12.h,
                bottom: 20.h,
                right: 16.w,
                left: 16.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name),

                  Row(
                    children: [
                      SvgPicture.asset(ratingone!),
                      SvgPicture.asset(ratingone!),
                      SvgPicture.asset(ratingone!),
                      SvgPicture.asset(ratingone!),
                      SvgPicture.asset(ratingone!),
                    ],
                  ),

                  UIHelper.verticalspace16,
                  Text(subtitle),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
