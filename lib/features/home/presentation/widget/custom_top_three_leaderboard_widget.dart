import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/cached_network_image_widget.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomTopThreeLeaderboardWidget extends StatelessWidget {
  const CustomTopThreeLeaderboardWidget({
    super.key,
    required this.rankOneImageUrl,
    required this.rankTwoImageUrl,
    required this.rankThreeImageUrl,
    required this.rank1Name,
    required this.rank2Name,
    required this.rank3Name,
    required this.rank1Score,
    required this.rank2Score,
    required this.rank3Score,
    required this.rank1Username,
    required this.rank2Username,
    required this.rank3Username,
    required this.rank1Number,
    required this.rank2Number,
    required this.rank3Number,
  });

  final String rankOneImageUrl;
  final String rankTwoImageUrl;
  final String rankThreeImageUrl;

  final String rank1Name;
  final String rank2Name;
  final String rank3Name;
  final String rank1Score;
  final String rank2Score;
  final String rank3Score;
  final String rank1Username;
  final String rank2Username;
  final String rank3Username;

  final String rank1Number;
  final String rank2Number;
  final String rank3Number;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 230.h,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          //============= rank 2 ===========
          Positioned(
            left: 50.w,
            bottom: 80.h,
            child: _buildLeaderboardAvatar(
              imageUrl: rankTwoImageUrl,
              rankNumber: rank2Number,
              color: AppColors.primaryColor,
              size: 70,
              name: rank2Name,
              score: rank2Score,
              username: rank2Username,
              isRankOne: false,
              fontstyle: TextFontStyle.txtfontstyle15w700primaryColor,
            ),
          ),

          // Rank 3 - Right
          Positioned(
            right: 50.w,
            bottom: 80.h,
            child: _buildLeaderboardAvatar(
              imageUrl: rankThreeImageUrl,
              rankNumber: rank3Number,
              color: AppColors.c4CAF50,
              size: 70,
              name: rank3Name,
              score: rank3Score,
              username: rank3Username,
              isRankOne: false,
              fontstyle: TextFontStyle.txtfontstyle15w700c4CAF50,
            ),
          ),

          // Rank 1 - Center
          Positioned(
            left: 0,
            right: 0,
            top: 10.h,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(AppIcons.crown),
                UIHelper.verticalSpace(4.h),
                _buildLeaderboardAvatar(
                  imageUrl: rankOneImageUrl,
                  rankNumber: rank1Number,
                  color: AppColors.cFF5722,
                  size: 85,
                  name: rank1Name,
                  score: rank1Score,
                  username: rank1Username,
                  isRankOne: true,
                  fontstyle: TextFontStyle.txtfontstyle15w700cFF5722,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLeaderboardAvatar({
    required String imageUrl,
    required String rankNumber,
    required Color color,
    required double size,
    required String name,
    required String score,
    required String username,
    required TextStyle fontstyle,
    bool isRankOne = false,
  }) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            // Profile Image
            Container(
              padding: EdgeInsets.all(3.sp),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(300.r),
                color: color,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300.r),
                child: CachedNetworkImageWidget(
                  imgUrl: imageUrl,
                  height: size.h,
                  width: size.w,
                ),
              ),
            ),

            // Rank Badge (rotated)
            Positioned(
              bottom: -10.h,
              child: Transform.rotate(
                angle: -1.0, // rotate the badge
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 4.h,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: color,
                  ),
                  child: Transform.rotate(
                    angle: 1.0, // rotate text back so it stays upright
                    child: Text(
                      rankNumber,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Name, Score, Username (straight)
            Positioned(
              bottom: -70.h,
              child: Column(
                children: [
                  Text(name, style: TextFontStyle.txtfontstyle12w600c212121),
                  UIHelper.verticalSpace(4.h),
                  Text(score, style: fontstyle),
                  UIHelper.verticalSpace(4.h),
                  Text(username),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
