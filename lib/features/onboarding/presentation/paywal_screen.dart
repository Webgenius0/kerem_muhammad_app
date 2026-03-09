import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_button_primary.dart';
import 'package:kerem_muhammad_app/constants/app_list.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/widget/custom_paywal_journey_card.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/widget/cutom_fitforgethelp_them_text.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/widget/paywalone_top_text_widget.dart';
import 'package:kerem_muhammad_app/helpers/all_routes.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PaywalScreen extends StatefulWidget {
  const PaywalScreen({super.key});

  @override
  State<PaywalScreen> createState() => _PaywalScreenState();
}

class _PaywalScreenState extends State<PaywalScreen> {
  final PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  int planselectedIndex = -1;

  void selectionPlan(int index) {
    setState(() {
      planselectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            UIHelper.verticalSpace(50.h),
            PaywaloneTopTextWidget(),
            UIHelper.verticalSpace(34.h),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60.w),
              child: CutomFitforgethelpThemText(),
            ),

            UIHelper.verticalspace32,

            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(20),
                    blurRadius: 20,
                    spreadRadius: 0,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              height: 320.h,
              child: SizedBox(
                child: PageView.builder(
                  controller: pageController,
                  itemCount: AppList().journeyCardlist.length,
                  itemBuilder: (context, index) {
                    final card = AppList().journeyCardlist[index];
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: CustomPaywalJourneyCard(
                        onTap: () {},
                        imageUrl: card['imageUrl'],
                        name: card['name'],
                        subtitle: card['subtitle'],
                        ratingone: card['rating'] == '5' ? AppIcons.star : null,
                        ratingtwo: card['rating'] == '5' ? AppIcons.star : null,
                        ratingthree: card['rating'] == '5'
                            ? AppIcons.star
                            : null,
                        ratingfour: card['rating'] == '5'
                            ? AppIcons.star
                            : null,
                        ratingfive: card['rating'] == '5'
                            ? AppIcons.star
                            : null,
                      ),
                    );
                  },
                ),
              ),
            ),

            UIHelper.verticalSpace(20.h),

            SmoothPageIndicator(
              controller: pageController,
              count: AppList().journeyCardlist.length,
              effect: ExpandingDotsEffect(
                dotHeight: 8.h,
                dotWidth: 8.w,
                activeDotColor: AppColors.c282828,
                dotColor: AppColors.cE7E7E7,
              ),
              onDotClicked: (index) {},
            ),

            UIHelper.verticalSpace(26.h),
            Text(
              'Get Unlimited Access',
              style: TextFontStyle.txtfontstyle16w600c000000worksans,
            ),
            UIHelper.verticalSpace(4.h),
            Text(
              'Reach 85kg in just 10 weeks',
              style: TextFontStyle.txtfontstyle12w500c786F6Fworksans,
            ),

            UIHelper.verticalSpace(30.h),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        selectionPlan(0);
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                          vertical: 18.h,
                        ),
                        decoration: BoxDecoration(
                          color: planselectedIndex == 0
                              ? AppColors.primaryColor
                              : AppColors.cFFFFFF,
                          borderRadius: BorderRadius.circular(16.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 12,
                              spreadRadius: 0,
                              blurStyle: BlurStyle.outer,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.topCenter,
                          children: [
                            if (planselectedIndex == 0)
                              Positioned(
                                top: -30.h,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 14.w,
                                    vertical: 4.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.cFF5722,
                                    border: Border.all(
                                      color: AppColors.cFFFFFF,
                                      width: 1.w,
                                    ),
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                  child: Text(
                                    'SAVE 62%',
                                    style: TextStyle(
                                      color: AppColors.cFFFFFF,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'MONTHLY',
                                  style: TextFontStyle.txtfontstyle13w700c000000
                                      .copyWith(
                                        color: planselectedIndex == 0
                                            ? AppColors.cFFFFFF
                                            : AppColors.c000000,
                                      ),
                                ),
                                UIHelper.verticalSpace(4.h),
                                Text(
                                  '\$29.99 /mo',
                                  style: TextFontStyle
                                      .txtfontstyle16w500c737373Fworksans
                                      .copyWith(
                                        color: planselectedIndex == 0
                                            ? AppColors.cFFFFFF
                                            : AppColors.c737373,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  UIHelper.horizontalspace12,

                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        selectionPlan(1);
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                          vertical: 18.h,
                        ),
                        decoration: BoxDecoration(
                          color: planselectedIndex == 1
                              ? AppColors.primaryColor
                              : AppColors.cFFFFFF,
                          borderRadius: BorderRadius.circular(16.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 12,
                              spreadRadius: 0,
                              blurStyle: BlurStyle.outer,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.topCenter,
                          children: [
                            if (planselectedIndex == 1)
                              Positioned(
                                top: -30.h,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 14.w,
                                    vertical: 4.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.cFF5722,
                                    border: Border.all(
                                      color: AppColors.cFFFFFF,
                                      width: 1.w,
                                    ),
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                  child: Text(
                                    'SAVE 62%',
                                    style: TextStyle(
                                      color: AppColors.cFFFFFF,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'YEARLY',
                                  style: TextFontStyle.txtfontstyle13w700c000000
                                      .copyWith(
                                        color: planselectedIndex == 1
                                            ? AppColors.cFFFFFF
                                            : AppColors.c000000,
                                      ),
                                ),
                                UIHelper.verticalSpace(4.h),
                                Text(
                                  '\$29.99 /mo',
                                  style: TextFontStyle
                                      .txtfontstyle16w500c737373Fworksans
                                      .copyWith(
                                        color: planselectedIndex == 1
                                            ? AppColors.cFFFFFF
                                            : AppColors.c737373,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            UIHelper.verticalSpace(28.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomButtonprimary(
                title: 'START MY JOURNEY',
                onTap: () {
                  NavigationService.navigateTo(
                    Routes.creatingYourProgramsScreen,
                  );
                },
                buttonColor: AppColors.primaryColor,
                textColor: AppColors.cFFFFFF,
              ),
            ),

            UIHelper.verticalSpace(14.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60.w),
              child: Text(
                textAlign: TextAlign.center,

                "Purchase appears as “ITUNES STORE”cancel Anytime ✅ money back guarantee✊",
                style: TextFontStyle.txtfontstyle10w500c000000,
              ),
            ),

            UIHelper.verticalspace32,
          ],
        ),
      ),
    );
  }
}
