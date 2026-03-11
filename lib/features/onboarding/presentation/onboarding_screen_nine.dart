import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_app_bar_onboarding.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_button_primary.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/all_routes.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class OnboardingScreenNine extends StatefulWidget {
  const OnboardingScreenNine({super.key});

  @override
  State<OnboardingScreenNine> createState() => _OnboardingScreenNineState();
}

class _OnboardingScreenNineState extends State<OnboardingScreenNine> {
  int kgValue = 70;

  final ScrollController _scrollController = ScrollController();
  final double _itemWidth = 14.w;
  bool _isInternalUpdate = false;

  final int minKg = 30;
  final int maxKg = 250;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _jumpToInitial());
    _scrollController.addListener(_handleScroll);
  }

  void _handleScroll() {
    if (_isInternalUpdate || !_scrollController.hasClients) return;

    double offset = _scrollController.offset;
    int index = (offset / _itemWidth).round();

    int newVal = (minKg + index).clamp(minKg, maxKg);
    if (newVal != kgValue) {
      setState(() {
        kgValue = newVal;
        log("Selected Weight: $kgValue kg");
      });
    }
  }

  void _jumpToInitial() {
    if (_scrollController.hasClients) {
      _isInternalUpdate = true;
      _scrollController.jumpTo((kgValue - minKg) * _itemWidth);
      Future.delayed(const Duration(milliseconds: 50), () {
        if (mounted) _isInternalUpdate = false;
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double centerPadding = (screenWidth / 2) - (_itemWidth / 2);

    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: CustomAppBarOnboarding(
        onTap: () {
          NavigationService.goBack;
        },
        currentStep: '9',
        svgimg: AppIcons.arrowleft,
      ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            UIHelper.verticalSpace(20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                textAlign: TextAlign.center,
                "What is your target weight?",
                style: TextFontStyle.txtfontstyle24w700c212121,
              ),
            ),

            UIHelper.verticalSpace(40.h),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 16.h),
              decoration: BoxDecoration(
                color: AppColors.cFFFFFF,
                borderRadius: BorderRadius.circular(30.r),
                boxShadow: const [
                  BoxShadow(color: Colors.black12, blurRadius: 10),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Your goal :',
                    style: TextFontStyle.txtfontstyle15w400c5C5C5C,
                  ),
                  UIHelper.horizontalSpace(10.w),
                  Text(
                    'Gain weight',
                    style: TextFontStyle.txtfontstyle15w700cFF5722,
                  ),
                ],
              ),
            ),

            UIHelper.verticalSpace(40.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  "$kgValue",
                  style: TextFontStyle.txtfontstyle35w800c111214.copyWith(
                    fontSize: 80.sp,
                    height: 1.0,
                  ),
                ),
                UIHelper.horizontalSpace(4.w),
                Text(
                  "kg",
                  style: TextFontStyle.txtfontstyle36w400c676C75.copyWith(
                    fontSize: 30.sp,
                    color: const Color(0xFF9EA0A5),
                  ),
                ),
              ],
            ),

            UIHelper.verticalSpace(40.h),

            SizedBox(
              height: 140.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  ListView.builder(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    padding: EdgeInsets.symmetric(horizontal: centerPadding),
                    itemCount: (maxKg - minKg + 1),
                    itemBuilder: (context, index) {
                      int value = minKg + index;
                      bool isMajor = value % 5 == 0;

                      return SizedBox(
                        width: _itemWidth,
                        height: 140.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 70.h,
                              child: Align(
                                alignment: isMajor
                                    ? Alignment.topCenter
                                    : Alignment.center,
                                child: Container(
                                  width: isMajor ? 4.w : 2.w,
                                  height: isMajor ? 60.h : 30.h,
                                  decoration: BoxDecoration(
                                    color: isMajor
                                        ? const Color(0xFFBDBDBD)
                                        : const Color(0xFFE0E0E0),
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                ),
                              ),
                            ),

                            UIHelper.verticalSpace(26.h),

                            if (isMajor)
                              SizedBox(
                                height: 20.h,
                                child: OverflowBox(
                                  maxWidth: 60.w,
                                  minWidth: 0,
                                  child: Text(
                                    "$value",
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    softWrap: false,
                                    style:
                                        TextFontStyle.txtfontstyle14w600c676C75,
                                  ),
                                ),
                              )
                            else
                              SizedBox(height: 20.h),
                          ],
                        ),
                      );
                    },
                  ),
                  IgnorePointer(
                    child: Transform.translate(
                      offset: Offset(0, -20.h),
                      child: SvgPicture.asset(
                        AppIcons.orangestick,
                        height: 100.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            UIHelper.verticalSpace(100.h),

            Padding(
              padding: EdgeInsets.all(24.r),
              child: CustomButtonprimary(
                title: "Next",
                onTap: () {
                  log("Final Selection -> $kgValue kg");
                  NavigationService.navigateTo(Routes.onboardingScreenTen);
                },
                buttonColor: AppColors.primaryColor,
                textColor: AppColors.cFFFFFF,
              ),
            ),

            UIHelper.verticalspace32,
          ],
        ),
      ),
    );
  }
}
