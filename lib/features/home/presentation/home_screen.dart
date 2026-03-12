import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/assets_helper/app_image.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_todays_training_card.dart';
import 'package:kerem_muhammad_app/features/home/presentation/widget/custom_home_app_bar.dart';
import 'package:kerem_muhammad_app/features/home/presentation/widget/custom_progress_summary_card.dart';
import 'package:kerem_muhammad_app/features/home/presentation/widget/custom_streak_challanges_card.dart';
import 'package:kerem_muhammad_app/features/home/presentation/widget/custom_todays_meal_card.dart';
import 'package:kerem_muhammad_app/features/home/presentation/widget/custom_todays_workout_card.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomCustomerAppBar(
        imageurl:
            "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0",
        message: 'Are you ready to smash your fitness goals today?',
        userName: 'Alex',
        onTapRewardicon: () {},
        onTapRoboIcon: () {},
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            UIHelper.verticalspace24,
            CustomTodaysWorkoutCard(
              title: "Today's Workout",
              subtitle: "Upper Body Strength",
              onTapViewAll: () {},
              trainingTitle: 'Upper Body Strength',
              calorytext: '320',
              minutext: '45',
              currenttitle: 'Intermediate',
              listviewBuilder: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return CustomTodaysTrainingCard(
                    workoutImage: AppImages.plank,
                    workoutName: 'Push-ups',
                    exerciseText: 'Exercises',
                    workoutminute: '1 min',
                    onTap: () {},
                    donePauseIcon: AppIcons.pause,
                  );
                },
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: CustomTodaysMeaCard(
                onTapViewAll: () {},

                caloryTake: '1,650',
                totalCalory: '2,100',
                breakfastFoodName: 'Oatmeal Bowl',
                breakfastCalory: '430 cal',
                lunchFoodName: 'Grilled Chicken',
                lunchCalory: '580 cal',
                consumedCaloryText: '78% of daily calories consumed ',
                progressbar: TweenAnimationBuilder<double>(
                  tween: Tween(begin: 0, end: 0.7),
                  duration: const Duration(milliseconds: 500),
                  builder: (context, value, child) {
                    return LinearPercentIndicator(
                      padding: EdgeInsets.zero,
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
              ),
            ),

            CustomProgressSummaryCard(
              details: () {},
              title: 'Progress Summary',
              subtitle: "This week's achievements",
              completeworkout: '5',
              allWorkout: '7',
              workouText: 'days completed',
              weight: '-1.2',
              weighText: 'lbs this week',
              calories: '2,450',
              caloriesText: 'burned total',
              avghr: '142',
              avghrText: 'bpm during workouts',
            ),

            Padding(
              padding: EdgeInsets.only(top: 16.h),
              child: CustomStreakChallangesCard(
                onTapDetails: () {},
                title: 'Streak & Challenges',
                subtitle: 'Keep the momentum going!',

                dailyStreaktitle: 'Daily Streak',
                dailyStreaksubtitle: 'Keep the momentum going!',
                daysNumber: '23',
                challangeText: '7-Day Challenge',
                challangeprogresstext: '6/7',
                progresswidget: TweenAnimationBuilder<double>(
                  tween: Tween(begin: 0, end: 0.7),
                  duration: const Duration(milliseconds: 500),
                  builder: (context, value, child) {
                    return LinearPercentIndicator(
                      padding: EdgeInsets.zero,
                      percent: value,
                      lineHeight: 4.h,
                      barRadius: Radius.circular(100.r),
                      backgroundColor: AppColors.cE7E7E7,
                      linearGradient: LinearGradient(
                        colors: [AppColors.cFF5722, AppColors.cFF5722],
                      ),
                    );
                  },
                ),
              ),
            ),
            UIHelper.verticalSpace(120.h),
          ],
        ),
      ),
    );
  }
}
