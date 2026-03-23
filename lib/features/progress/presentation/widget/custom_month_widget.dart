import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/features/progress/presentation/widget/custom_month_workout_completion_card.dart';
import 'package:kerem_muhammad_app/features/progress/presentation/widget/custom_progress_progress_summary_card.dart';
import 'package:kerem_muhammad_app/features/progress/presentation/widget/custom_progress_top_card_widget.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CustomMonthWidget extends StatefulWidget {
  const CustomMonthWidget({super.key});

  @override
  State<CustomMonthWidget> createState() => _CustomMonthWidgetState();
}

class _CustomMonthWidgetState extends State<CustomMonthWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          UIHelper.verticalSpace(28.h),
          CustomProgressTopCardWidget(
            title: 'Weekly Workout Completion',
            day1: 'Mon',
            daypregress1: TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: 0.9),
              duration: const Duration(milliseconds: 500),
              builder: (context, value, child) {
                return LinearPercentIndicator(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  percent: value,
                  lineHeight: 8.h,
                  barRadius: Radius.circular(100.r),
                  backgroundColor: AppColors.cE7E7E7,
                  linearGradient: LinearGradient(
                    colors: [AppColors.primaryColor, AppColors.primaryColor],
                  ),
                );
              },
            ),
            progress1Text: '92%',
            day2: 'Tue',
            daypregress2: TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: 0.8),
              duration: const Duration(milliseconds: 500),
              builder: (context, value, child) {
                return LinearPercentIndicator(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  percent: value,
                  lineHeight: 8.h,
                  barRadius: Radius.circular(100.r),
                  backgroundColor: AppColors.cE7E7E7,
                  linearGradient: LinearGradient(
                    colors: [AppColors.primaryColor, AppColors.primaryColor],
                  ),
                );
              },
            ),
            progress2Text: '78%',
            day3: 'wed',
            daypregress3: TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: 0.6),
              duration: const Duration(milliseconds: 500),
              builder: (context, value, child) {
                return LinearPercentIndicator(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  percent: value,
                  lineHeight: 8.h,
                  barRadius: Radius.circular(100.r),
                  backgroundColor: AppColors.cE7E7E7,
                  linearGradient: LinearGradient(
                    colors: [AppColors.primaryColor, AppColors.primaryColor],
                  ),
                );
              },
            ),
            progress3Text: '66%',
            day4: 'Thu',
            daypregress4: TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: 0.9),
              duration: const Duration(milliseconds: 500),
              builder: (context, value, child) {
                return LinearPercentIndicator(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  percent: value,
                  lineHeight: 8.h,
                  barRadius: Radius.circular(100.r),
                  backgroundColor: AppColors.cE7E7E7,
                  linearGradient: LinearGradient(
                    colors: [AppColors.primaryColor, AppColors.primaryColor],
                  ),
                );
              },
            ),
            progress4Text: '95%',
            day5: 'Fri',
            daypregress5: TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: 1.0),
              duration: const Duration(milliseconds: 500),
              builder: (context, value, child) {
                return LinearPercentIndicator(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  percent: value,
                  lineHeight: 8.h,
                  barRadius: Radius.circular(100.r),
                  backgroundColor: AppColors.cE7E7E7,
                  linearGradient: LinearGradient(
                    colors: [AppColors.primaryColor, AppColors.primaryColor],
                  ),
                );
              },
            ),
            progress5Text: '100%',
            day6: 'Sat',
            daypregress6: TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: 0.8),
              duration: const Duration(milliseconds: 500),
              builder: (context, value, child) {
                return LinearPercentIndicator(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  percent: value,
                  lineHeight: 8.h,
                  barRadius: Radius.circular(100.r),
                  backgroundColor: AppColors.cE7E7E7,
                  linearGradient: LinearGradient(
                    colors: [AppColors.primaryColor, AppColors.primaryColor],
                  ),
                );
              },
            ),
            progress6Text: '85%',
            day7: 'Sun',
            daypregress7: TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: 0.9),
              duration: const Duration(milliseconds: 500),
              builder: (context, value, child) {
                return LinearPercentIndicator(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  percent: value,
                  lineHeight: 8.h,
                  barRadius: Radius.circular(100.r),
                  backgroundColor: AppColors.cE7E7E7,
                  linearGradient: LinearGradient(
                    colors: [AppColors.primaryColor, AppColors.primaryColor],
                  ),
                );
              },
            ),
            progress7Text: '90%',
          ),

          CustomMonthWorkoutCompletionCard(
            title: 'Month Workout Completion',
            weekText1: 'Week 1',
            inprogress1: TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: 0.9),
              duration: const Duration(milliseconds: 500),
              builder: (context, value, child) {
                return LinearPercentIndicator(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  percent: value,
                  lineHeight: 8.h,
                  barRadius: Radius.circular(100.r),
                  backgroundColor: AppColors.cE7E7E7,
                  linearGradient: LinearGradient(
                    colors: [AppColors.cFF5722, AppColors.cFF5722],
                  ),
                );
              },
            ),
            inprogressText1: '1780 in',
            outprogress1: TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: 0.9),
              duration: const Duration(milliseconds: 500),
              builder: (context, value, child) {
                return LinearPercentIndicator(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  percent: value,
                  lineHeight: 8.h,
                  barRadius: Radius.circular(100.r),
                  backgroundColor: AppColors.cE7E7E7,
                  linearGradient: LinearGradient(
                    colors: [AppColors.c4CAF50, AppColors.c4CAF50],
                  ),
                );
              },
            ),
            outprogressText1: '1780 out',
            weekText2: 'Week 2',
            inprogress2: TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: 0.9),
              duration: const Duration(milliseconds: 500),
              builder: (context, value, child) {
                return LinearPercentIndicator(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  percent: value,
                  lineHeight: 8.h,
                  barRadius: Radius.circular(100.r),
                  backgroundColor: AppColors.cE7E7E7,
                  linearGradient: LinearGradient(
                    colors: [AppColors.cFF5722, AppColors.cFF5722],
                  ),
                );
              },
            ),
            inprogressText2: '1780 in',
            outprogress2: TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: 0.9),
              duration: const Duration(milliseconds: 500),
              builder: (context, value, child) {
                return LinearPercentIndicator(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  percent: value,
                  lineHeight: 8.h,
                  barRadius: Radius.circular(100.r),
                  backgroundColor: AppColors.cE7E7E7,
                  linearGradient: LinearGradient(
                    colors: [AppColors.c4CAF50, AppColors.c4CAF50],
                  ),
                );
              },
            ),
            outprogressText2: '1780 out',
            weekText3: 'Week 3',
            inpregross3: TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: 0.9),
              duration: const Duration(milliseconds: 500),
              builder: (context, value, child) {
                return LinearPercentIndicator(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  percent: value,
                  lineHeight: 8.h,
                  barRadius: Radius.circular(100.r),
                  backgroundColor: AppColors.cE7E7E7,
                  linearGradient: LinearGradient(
                    colors: [AppColors.cFF5722, AppColors.cFF5722],
                  ),
                );
              },
            ),
            inprogressText3: '1780 in',
            outprogress3: TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: 0.9),
              duration: const Duration(milliseconds: 500),
              builder: (context, value, child) {
                return LinearPercentIndicator(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  percent: value,
                  lineHeight: 8.h,
                  barRadius: Radius.circular(100.r),
                  backgroundColor: AppColors.cE7E7E7,
                  linearGradient: LinearGradient(
                    colors: [AppColors.c4CAF50, AppColors.c4CAF50],
                  ),
                );
              },
            ),
            outprogressText3: '1780 out',
            weekText4: 'Week 4',
            inpregross4: TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: 0.9),
              duration: const Duration(milliseconds: 500),
              builder: (context, value, child) {
                return LinearPercentIndicator(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  percent: value,
                  lineHeight: 8.h,
                  barRadius: Radius.circular(100.r),
                  backgroundColor: AppColors.cE7E7E7,
                  linearGradient: LinearGradient(
                    colors: [AppColors.cFF5722, AppColors.cFF5722],
                  ),
                );
              },
            ),

            inprogressText4: '1780 in',
            outprogress4: TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: 0.9),
              duration: const Duration(milliseconds: 500),
              builder: (context, value, child) {
                return LinearPercentIndicator(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  percent: value,
                  lineHeight: 8.h,
                  barRadius: Radius.circular(100.r),
                  backgroundColor: AppColors.cE7E7E7,
                  linearGradient: LinearGradient(
                    colors: [AppColors.c4CAF50, AppColors.c4CAF50],
                  ),
                );
              },
            ),
            outprogressText4: '1780 out',
          ),

          CustomProgressProgressSummaryCard(
            title: 'Progress Summary',
            subtitle: "This week's achievements",
            allWorkout: '7',
            completeworkout: '5',
            weight: '-1.2',
            calories: '2,450',
            avghr: '142',
            avghrText: 'bpm during workouts',
            caloriesText: 'burned total',
            weighText: 'lbs this week',
            workouText: 'days completed',
          ),

          UIHelper.verticalSpace(120.h),
        ],
      ),
    );
  }
}
