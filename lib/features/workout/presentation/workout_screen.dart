import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/common_widgets/cached_network_image_widget.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_todays_training_card.dart';
import 'package:kerem_muhammad_app/constants/app_list.dart';
import 'package:kerem_muhammad_app/features/workout/presentation/widget/custom_today_workout_card_widget.dart';
import 'package:kerem_muhammad_app/helpers/all_routes.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({super.key});

  @override
  State<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  int activeIndex = 0;

  int selectedIndex = -1;

  void selection(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(80.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 160.h,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          activeIndex = index;
                        });
                      },
                    ),
                    items: AppList().workoutImagelist.map((imageUrl) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(16.r),
                        child: CachedNetworkImageWidget(
                          imgUrl: imageUrl,
                          height: 100.h,
                          width: MediaQuery.of(context).size.width,
                        ),
                      );
                    }).toList(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 12.h),
                    child: AnimatedSmoothIndicator(
                      activeIndex: activeIndex,
                      count: AppList().workoutImagelist.length,
                      effect: SwapEffect(
                        dotHeight: 6.h,
                        dotWidth: 6.w,
                        activeDotColor: AppColors.cFFFFFF,
                        dotColor: Colors.white30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            UIHelper.verticalspace16,

            CustomTodayWorkoutCardWidget(
              title: "Today's Workout",
              subtitle: "Upper Body Strength",
              bodytrainTitle: 'Upper Body Strength',
              minute: '45 min',
              calory: '320 cal',
              workouttype: 'Intermediate',
              listviewBuilder: ListView.builder(
                itemCount: AppList().todaysWorkoutList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return CustomTodaysTrainingCard(
                    isSelected: selectedIndex == index,

                    workoutImage: AppList().todaysWorkoutList[index]['image'],
                    workoutName:
                        AppList().todaysWorkoutList[index]['workoutName'],
                    exerciseText:
                        AppList().todaysWorkoutList[index]['exerciseText'],
                    workoutminute:
                        AppList().todaysWorkoutList[index]['exerciseText'],
                    onTap: () {
                      selection(index);
                      NavigationService.navigateTo(Routes.workoutsTimeScreen);
                    },
                    donePauseIcon:
                        AppList().todaysWorkoutList[index]['playIcon'],
                  );
                },
              ),
            ),

            UIHelper.verticalSpace(120.h),
          ],
        ),
      ),
    );
  }
}
