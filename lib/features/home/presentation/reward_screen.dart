import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_appbar.dart';
import 'package:kerem_muhammad_app/features/home/presentation/widget/custom_current_streak_card.dart';
import 'package:kerem_muhammad_app/features/home/presentation/widget/custom_reward_achivements_text_widget.dart';
import 'package:kerem_muhammad_app/features/home/presentation/widget/custom_reward_personal_information_card.dart';
import 'package:kerem_muhammad_app/features/home/presentation/widget/custom_reward_top_card_widget.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

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
                  UIHelper.verticalSpace(24.h),
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
                          child: Column(children: [



                            ],
                          ),
                        ),

                        //======================= Challanges ======================
                        SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(children: [



                            ],
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
