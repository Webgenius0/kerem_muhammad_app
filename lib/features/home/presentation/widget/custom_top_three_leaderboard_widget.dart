// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
// import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
// import 'package:kerem_muhammad_app/common_widgets/cached_network_image_widget.dart';
// import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

// class CustomTopThreeLeaderboardWidget extends StatelessWidget {
//   const CustomTopThreeLeaderboardWidget({
//     super.key,
//     required this.rankOneImageUrl,
//     required this.rankTwoImageUrl,
//     required this.rankThreeImageUrl, required this.rank1Name, required this.rank2Name, required this.rank3Name, required this.rank1Score, required this.rank2Score, required this.rank3Score, required this.rank1Username, required this.rank2Username, required this.rank3Username, required this.rand1, required this.rand2, required this.rand3,

//   });

//   final String rankOneImageUrl;
//   final String rankTwoImageUrl;
//   final String rankThreeImageUrl;
//   final String rand1;
//   final String rand2;
//   final String rand3;

//   final String rank1Name;
//   final String rank2Name;
//   final String rank3Name;
//   final String rank1Score;
//   final String rank2Score;
//   final String rank3Score;
//   final String rank1Username;
//   final String rank2Username;
//   final String rank3Username;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       height: 260.h,
//       child: Stack(
//         clipBehavior: Clip.none,
//         children: [
//           Positioned(
//             left: 50.w, // Adjust for desired distance from edge
//             bottom: 80.h, // Positioned lower than Rank 1
//             child: _buildLeaderboardAvatar(
//               imageUrl: rankTwoImageUrl,
//               rank: rand2,
//               color: AppColors.primaryColor,
//               size: 70,

//             ),
//           ),

//           Positioned(
//             right: 50.w, // Adjust for desired distance from edge
//             bottom: 80.h, // Positioned lower than Rank 1
//             child: _buildLeaderboardAvatar(
//               imageUrl: rankThreeImageUrl,
//               rank: rand3,
//               color: AppColors.c4CAF50,
//               size: 70,
//             ),
//           ),

//           /// CENTER USER (Rank 1)
//           Positioned(
//             left: 0,
//             right: 0,
//             top: 10.h, // Positioned higher than others
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 SvgPicture.asset(AppIcons.crown),
//                 UIHelper.verticalSpace(4.h),
//                 _buildLeaderboardAvatar(
//                   imageUrl: rankOneImageUrl,
//                   rank: rand1,
//                   color: AppColors.cFF5722,
//                   size: 85,
//                   isRankOne: true,
//                   name: rank1Name,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildLeaderboardAvatar({
//     required String imageUrl,
//     required String rank,
//     required Color color,
//     required double size,
//     final String name;

//     required String score;
//     required String username;
//     bool isRankOne = false,
//   }) {
//     return Column(
//       children: [
//         Stack(
//           alignment: Alignment.center,
//           clipBehavior: Clip.none,
//           children: [
//             Container(
//               padding: EdgeInsets.all(3.sp),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(300.r),

//                 color: color,
//               ),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(300.r),
//                 child: CachedNetworkImageWidget(
//                   imgUrl: imageUrl,
//                   height: size.h,
//                   width: size.w,
//                 ),
//               ),
//             ),
//             Positioned(
//               bottom: -10.h,
//               child: Transform.rotate(
//                 angle: -1.0,
//                 child: Container(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: 10.w,
//                     vertical: 4.h,
//                   ),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(5.r),
//                     color: color,
//                   ),
//                   child: Text(
//                     rank,
//                     style: const TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//             ),

//             Positioned(
//               bottom: -70.h,
//               child: Column(
//                 children: [
//                   Text('Eiden'),

//                   UIHelper.verticalSpace(4.h),
//                   Text('2430'),
//                   UIHelper.verticalSpace(4.h),

//                   Text('@username'),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
