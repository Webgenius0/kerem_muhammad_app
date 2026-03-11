// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
// import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

// class CustomTodaysWorkoutCard extends StatelessWidget {
//   const CustomTodaysWorkoutCard({super.key, required this.title, required this.subtitle, required this.onTapViewAll, required this.trainingTitle, required this.mintext, required this.calorytext});
//   final String title;
//   final String subtitle;
//   final VoidCallback onTapViewAll;
//   final String trainingTitle;
//   final String mintext;
//   final String calorytext;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(160.r),
//         color: AppColors.cFFFFFF,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withAlpha(20),
//             offset: Offset(0, 4),
//             blurRadius: 20,
//             spreadRadius: 0,
//           ),
//         ],
//       ),
//       padding: EdgeInsets.all(16.r),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,

//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(title),
//               GestureDetector(
//                 onTap: onTapViewAll,
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(300.r),
//                     color: AppColors.cFFF2F0,
//                   ),
//                   padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
//                   child: Text('View all'),
//                 ),
//               ),
//             ],
//           ),

//           UIHelper.verticalSpace(8.h),
//           Text(subtitle),

//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12.r,

//             ),color: AppColors.cFF5722),
//             padding: EdgeInsets.all(
//              16.r,
            
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [

//                 Text('Upper Body Strength'),
//                 UIHelper.verticalspace12,
//                 Row(
//                   children: [

//                     SvgPicture.asset()


                   



//                   ],
//                 )



//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
