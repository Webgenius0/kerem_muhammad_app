import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_appbar.dart';
import 'package:kerem_muhammad_app/constants/app_list.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/features/home/presentation/widget/custom_badges_card.dart';
import 'package:kerem_muhammad_app/features/home/presentation/widget/custom_current_streak_card.dart';
import 'package:kerem_muhammad_app/features/home/presentation/widget/custom_reward_achivements_text_widget.dart';
import 'package:kerem_muhammad_app/features/home/presentation/widget/custom_reward_personal_information_card.dart';
import 'package:kerem_muhammad_app/features/home/presentation/widget/custom_reward_top_card_widget.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class RewardScreen extends StatefulWidget {
  const RewardScreen({super.key});

  @override
  State<RewardScreen> createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        onTap: () {
          NavigationService.goBack;
        },
        svgimg: AppIcons.arrowleft,
        title: 'Rewards',
        rightSvgIcon: AppIcons.rankingic,
      ),

      body: Column(
        children: [
          UIHelper.verticalspace24,
          CustomRewardAchivementsTextWidget(),

          CustomRewardTopCardWidget(
            titleBadge: 'Badges Earned',
            titldaystreak: 'Day Streak',
            titltotalPoints: 'Total Points',
            numberBadge: '12',
            numberdaystreak: '5',
            numberpoints: '1250',
          ),

          Expanded(
            child: DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Container(
                      padding: EdgeInsets.all(4.w),
                      decoration: BoxDecoration(
                        color: AppColors.cFFFFFF,
                        borderRadius: BorderRadius.circular(99.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withAlpha(20),
                            offset: Offset(0, 4),
                            blurRadius: 20,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: TabBar(
                        indicator: BoxDecoration(
                          color: AppColors.cFF5722,
                          borderRadius: BorderRadius.circular(99.r),
                        ),
                        indicatorSize: TabBarIndicatorSize.tab,
                        dividerColor: Colors.transparent,
                        labelColor: AppColors.cFFFFFF,
                        unselectedLabelColor: AppColors.c637381,
                        tabs: [
                          Tab(text: 'Streak'),
                          Tab(text: 'Badges'),
                          Tab(text: 'Challenges'),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        // ===================== streak ========================
                        SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              CustomCurrentStreakCard(
                                title: '🔥 Current Streak',
                                days: '5 Days',
                                subtitle: 'Keep it going to reach 7 days!',
                                svgIcon1: AppIcons.done,
                                svgIcon2: AppIcons.done,
                                svgIcon3: AppIcons.done,
                                svgIcon4: AppIcons.done,
                                svgIcon5: AppIcons.done,
                                number6: '6',
                                number7: '7',
                              ),
                              CustomRewardPersonalInformationCard(
                                longeststreak: '12 days',
                                totalworkout: '18 workouts',
                                thismonth: '127 sessions',
                              ),
                              UIHelper.verticalSpace(120.h),
                            ],
                          ),
                        ),

                        //======================== Badges =======================
                        SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              UIHelper.verticalSpace(20.h),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.w),
                                child: GridView.builder(
                                  shrinkWrap: true,
                                  physics: BouncingScrollPhysics(),
                                  itemCount: AppList().rewardBadgesList.length,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 12.w,
                                        mainAxisSpacing: 16.h,
                                        childAspectRatio: 0.8,
                                      ),
                                  itemBuilder: (context, index) {
                                    final item =
                                        AppList().rewardBadgesList[index];
                                    return CustomBadgesCard(
                                      title: item['title'],
                                      icon: item['icon'],
                                      subtitle: item['subtitle'],
                                      status: item['status'],
                                      index: index,
                                    );
                                  },
                                ),
                              ),

                              UIHelper.verticalspace32,
                            ],
                          ),
                        ),

                        //======================= Challanges ======================
                        SingleChildScrollView(
                          padding: EdgeInsets.only(top: 20.h, bottom: 32.h),
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: List.generate(3, (index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 16.h),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.r),
                                    color: AppColors.cFFFFFF,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withAlpha(20),
                                        offset: Offset(0, 4),
                                        blurRadius: 20,
                                      ),
                                    ],
                                  ),
                                  padding: EdgeInsets.all(24.sp),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            '7-Day Streak Challenge',
                                            style: TextFontStyle
                                                .txtfontstyle16w700c212121,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(300.r),
                                              color: AppColors.cE4F0FF,
                                            ),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 8.w,
                                              vertical: 4.h,
                                            ),
                                            child: Text(
                                              'Active',
                                              style: TextFontStyle
                                                  .txtfontstyle12w400c2563EB,
                                            ),
                                          ),
                                        ],
                                      ),

                                      UIHelper.verticalspace16,

                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,

                                        children: [
                                          Text(
                                            '1780 in',
                                            style: TextFontStyle
                                                .txtfontstyle12w500c637381,
                                          ),
                                          Text(
                                            '5/7',
                                            style: TextFontStyle
                                                .txtfontstyle12w500c637381,
                                          ),
                                        ],
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 8.h,
                                          bottom: 16.h,
                                        ),
                                        child: TweenAnimationBuilder<double>(
                                          tween: Tween(begin: 0, end: 0.9),
                                          duration: const Duration(
                                            milliseconds: 500,
                                          ),
                                          builder: (context, value, child) {
                                            return LinearPercentIndicator(
                                              percent: value,
                                              lineHeight: 8.h,
                                              barRadius: Radius.circular(100.r),
                                              backgroundColor:
                                                  AppColors.cE7E7E7,
                                              linearGradient: LinearGradient(
                                                colors: [
                                                  AppColors.primaryColor,
                                                  AppColors.primaryColor,
                                                ],
                                              ),
                                            );
                                          },
                                        ),
                                      ),

                                      Text(
                                        'Reward: 50 points',
                                        style: TextFontStyle
                                            .txtfontstyle14w400c637381,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
