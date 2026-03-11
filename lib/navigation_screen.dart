import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/features/home/presentation/home_screen.dart';
import 'package:kerem_muhammad_app/features/neutrition/presentation/neutrition_screen.dart';
import 'package:kerem_muhammad_app/features/profile/presentation/profile_screen.dart';
import 'package:kerem_muhammad_app/features/progress/presentation/progress_screen.dart';
import 'package:kerem_muhammad_app/features/workout/presentation/workout_screen.dart';
import 'package:kerem_muhammad_app/helpers/helper_methods.dart';

class NavigationScreen extends StatefulWidget {
  final int? pageNum;

  const NavigationScreen({super.key, this.pageNum});

  @override
  // ignore: library_private_types_in_public_api
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const WorkoutScreen(),
    const NeutritionScreen(),
    const ProgressScreen(),
    const ProfileScreen(),
  ];
  @override
  void initState() {
    super.initState();
    _currentIndex = widget.pageNum ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) async {
        showMaterialDialog(context);
      },
      child: SafeArea(
        top: false,
        child: Scaffold(
          body: _screens[_currentIndex],
          extendBody: true,
          bottomNavigationBar: Container(
            height: 80.h,
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            decoration: BoxDecoration(
              color: AppColors.cFFFFFF,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha(20),
                  offset: Offset(0, 4),
                  blurRadius: 20,
                  spreadRadius: 0,
                ),
              ],

              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.r),
                topRight: Radius.circular(16.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: _buildNavItem(
                    0,
                    _currentIndex == 0 ? AppIcons.home : AppIcons.home,
                    'Home',
                  ),
                ),
                Expanded(
                  child: _buildNavItem(
                    1,
                    _currentIndex == 1 ? AppIcons.workout : AppIcons.workout,
                    'Workouts',
                  ),
                ),
                Expanded(
                  child: _buildNavItem(
                    2,
                    _currentIndex == 2
                        ? AppIcons.neutrition
                        : AppIcons.neutrition,
                    'Nutrition',
                  ),
                ),
                Expanded(
                  child: _buildNavItem(
                    3,
                    _currentIndex == 3 ? AppIcons.progress : AppIcons.progress,
                    'Progress',
                  ),
                ),

                Expanded(
                  child: _buildNavItem(
                    4,
                    _currentIndex == 4 ? AppIcons.profile : AppIcons.profile,
                    'Profile',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(int index, String iconPath, String title) {
    final isSelected = _currentIndex == index;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.r),
            bottomLeft: Radius.circular(16.r),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isSelected)
              Container(
                padding: EdgeInsets.all(4.w),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.cF7F8F9,
                ),
                child: Container(
                  padding: EdgeInsets.all(12.w),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primaryColor,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      iconPath,
                      width: 24.w,
                      height: 24.w,
                      fit: BoxFit.contain,
                      colorFilter: const ColorFilter.mode(
                        AppColors.cFFFFFF,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              )
            else
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    iconPath,
                    width: 24.w,
                    height: 24.w,

                    colorFilter: const ColorFilter.mode(
                      AppColors.c676C75,
                      BlendMode.srcIn,
                    ),
                  ),

                  SizedBox(height: 6.h),

                  Text(
                    title,
                    style: TextFontStyle.txtfontstyle12w500c676C75.copyWith(
                      color: AppColors.c676C75,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

// import 'package:ahmed_m_yusuf/features/home/presentation/home_screen.dart';
// import 'package:ahmed_m_yusuf/features/notification/presentation/notification_screen.dart';
// import 'package:ahmed_m_yusuf/features/profile/presentation/profile_screen.dart';
// import 'package:ahmed_m_yusuf/gen/colors.gen.dart';
// import 'package:ahmed_m_yusuf/helpers/helper_methods.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

// class NavigationsBarScreen extends StatefulWidget {
//   const NavigationsBarScreen({super.key});

//   @override
//   State<NavigationsBarScreen> createState() => _NavigationsBarScreenState();
// }

// class _NavigationsBarScreenState extends State<NavigationsBarScreen> {
//   int index = 0;

//   final List<Widget> _pageList = [
//     const HomeScreen(),
//     const NotificationScreen(),
//     const ProfileScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return PopScope(
//       canPop: false,
//       // ignore: deprecated_member_use
//       onPopInvoked: (bool didPop) async {
//         showMaterialDialog(context);
//       },
//       child: Scaffold(
//         body: _pageList[index],
//         backgroundColor: Colors.white,
//         bottomNavigationBar: Container(
//           margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
//           padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
//           decoration: BoxDecoration(
//             color: AppColors.cffffff,
//             borderRadius: BorderRadius.circular(30.r),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.1),
//                 blurRadius: 10,
//                 offset: const Offset(0, 5),
//               ),
//             ],
//           ),
//           child: GNav(
//             backgroundColor: Colors.transparent,
//             activeColor: AppColors.cffffff,
//             color: Colors.grey,
//             tabBackgroundColor: AppColors.primaryColor,
//             gap: 8,
//             padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
//             selectedIndex: index,
//             onTabChange: (int selectedIndex) {
//               setState(() {
//                 index = selectedIndex;
//               });
//             },
//             tabs: [
//               GButton(
//                 icon: Icons.home,
//                 // leading: index == 0
//                 //     ? SvgPicture.asset(
//                 //         Assets.icons.home,
//                 //         height: 24.h,
//                 //       )
//                 //     : SvgPicture.asset(Assets.icons.homeUnselected),
//                 text: "Home".tr,
//               ),
//               GButton(
//                 icon: Icons.notifications,
//                 // leading: index == 1
//                 //     ? SvgPicture.asset(
//                 //         Assets.icons.notificationWhiteIcon,
//                 //         height: 24.h,
//                 //       )
//                 //     : SvgPicture.asset(
//                 //         Assets.icons.notificationIcon,
//                 //        height: 24.h,
//                 //       ),
//                 text: "Notification".tr,
//               ),
//               GButton(
//                 icon: Icons.person,
//                 // leading: index == 2
//                 //     ? SvgPicture.asset(
//                 //         Assets.icons.profileIconWhite,
//                 //        height: 24.h,
//                 //       )
//                 //     : SvgPicture.asset(
//                 //         Assets.icons.profileIcon,
//                 //         height: 24.h,
//                 //       ),
//                 text: "Profile".tr,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
