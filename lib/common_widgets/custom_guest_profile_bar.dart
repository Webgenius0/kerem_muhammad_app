// import 'package:elinabell_app/gen/assets.gen.dart';
// import 'package:elinabell_app/helpers/ui_helpers.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class CustomGuestProfileBar extends StatelessWidget {
//   final String title;
//   const CustomGuestProfileBar({
//     super.key,
//     required this.title,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         UIHelper.verticalSpace(60.h),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Container(
//               height: 50.h,
//               width: 50.h,
//               alignment: Alignment.center,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(50.r),
//                 image: DecorationImage(
//                   fit: BoxFit.cover,
//                   image: AssetImage(
//                     Assets.images.applogo.path,
//                   ),
//                 ),
//               ),
//             ),
//             Text(
//               title,
//               overflow: TextOverflow.ellipsis,
//               style: TextFontStyle.text18boldcFFFFFFSweetSansPro.copyWith(
//                   fontFamily: "SweetSansProHeavy", fontWeight: FontWeight.w900),
//             ),
//             GestureDetector(
//                 onTap: () {
//                   ToastUtil.showShortToast("Please Login First");
//                   NavigationService.navigateTo(Routes.signIsScreen);
//                 },
//                 child: ClipOval(
//                   child: Image.asset(
//                     Assets.icons.personPlaceholder.path,
//                     width: 50.h,
//                     height: 50.h,
//                     fit: BoxFit.cover,
//                   ),
//                 ))
//           ],
//         ),
//       ],
//     );
//   }
// }
