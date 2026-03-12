import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/cached_network_image_widget.dart';
import 'package:kerem_muhammad_app/constants/app_list.dart';
import 'package:kerem_muhammad_app/features/neutrition/presentation/widget/custom_add_food_container.dart';
import 'package:kerem_muhammad_app/features/neutrition/presentation/widget/custom_neutrition_select_food_card.dart';
import 'package:kerem_muhammad_app/features/neutrition/presentation/widget/custom_neutrition_todays_meals_card.dart';
import 'package:kerem_muhammad_app/features/neutrition/presentation/widget/custom_schedule_container_widget.dart';
import 'package:kerem_muhammad_app/helpers/all_routes.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NeutritionScreen extends StatefulWidget {
  const NeutritionScreen({super.key});

  @override
  State<NeutritionScreen> createState() => _NeutritionScreenState();
}

class _NeutritionScreenState extends State<NeutritionScreen> {
  int activeIndex = 0;
  int selectedIndex = -1;

  void selection(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  int selectedIndexcard = -1;

  void selectionfoodtype(int index) {
    setState(() {
      selectedIndexcard = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(60.h),
            SizedBox(
              height: 80.h,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: AppList().neutritionScheduleList.length,
                itemBuilder: (context, index) {
                  var item = AppList().neutritionScheduleList[index];
                  return GestureDetector(
                    onTap: () {
                      selection(index);
                    },
                    child: CustomScheduleContainerWidget(
                      day: item['day'],
                      date: item['date'],
                      containerColor: selectedIndex == index
                          ? AppColors.primaryColor
                          : AppColors.cF9FAFB,
                      dateTextColor: selectedIndex == index
                          ? AppColors.cFFFFFF
                          : AppColors.c898989,
                      dayTextColor: selectedIndex == index
                          ? AppColors.cFFFFFF
                          : AppColors.c898989,
                    ),
                  );
                },
              ),
            ),

            UIHelper.verticalspace16,

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
                    items: AppList().neutritionFoodItems.map((imageUrl) {
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
                      count: AppList().neutritionFoodItems.length,
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

            CustomNeutritionTodaysMealsCard(
              title: "Today's Meals",
              takeCalories: '11,650',
              targetCalories: '2,100 calories',

              foodtype1: 'Carbs',
              foodCalory1: '420 cal',
              foodtype2: 'Protein',
              foodCalory2: '420 cal',
              foodtype3: 'Fat',
              foodCalory3: '420 cal',
              caloryConsumedText: '78% of daily calories consumed',
              progresswidget: TweenAnimationBuilder<double>(
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

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),

                  color: AppColors.cFFFFFF,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(20),
                      offset: Offset(0, 4),
                      blurRadius: 20,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                padding: EdgeInsets.all(8.sp),
                child: Row(
                  spacing: 8.w,
                  children: [
                    Expanded(
                      child: CustomNeutritionSelectFoodCard(
                        foodicon: AppIcons.neutritionbreakfast,
                        foodtitle: 'Breakfast',
                        cardColor: selectedIndexcard == 0
                            ? AppColors.cFF5722
                            : AppColors.cFFFFFF,
                        foodtitleColor: selectedIndexcard == 0
                            ? AppColors.cFFFFFF
                            : AppColors.c212121,
                        onTap: () {
                          selectionfoodtype(0);
                        },
                      ),
                    ),
                    Expanded(
                      child: CustomNeutritionSelectFoodCard(
                        foodicon: AppIcons.neutritionlunch,
                        foodtitle: 'Lunch',
                        cardColor: selectedIndexcard == 1
                            ? AppColors.cFF5722
                            : AppColors.cFFFFFF,
                        foodtitleColor: selectedIndexcard == 1
                            ? AppColors.cFFFFFF
                            : AppColors.c212121,
                        onTap: () {
                          selectionfoodtype(1);
                        },
                      ),
                    ),
                    Expanded(
                      child: CustomNeutritionSelectFoodCard(
                        foodicon: AppIcons.neutritiondinner,
                        foodtitle: 'Dinner',
                        cardColor: selectedIndexcard == 2
                            ? AppColors.cFF5722
                            : AppColors.cFFFFFF,
                        foodtitleColor: selectedIndexcard == 2
                            ? AppColors.cFFFFFF
                            : AppColors.c212121,
                        onTap: () {
                          selectionfoodtype(2);
                        },
                      ),
                    ),
                    Expanded(
                      child: CustomNeutritionSelectFoodCard(
                        foodicon: AppIcons.neutritionSnacks,
                        foodtitle: 'Snacks',
                        cardColor: selectedIndexcard == 3
                            ? AppColors.cFF5722
                            : AppColors.cFFFFFF,
                        foodtitleColor: selectedIndexcard == 3
                            ? AppColors.cFFFFFF
                            : AppColors.c212121,
                        onTap: () {
                          selectionfoodtype(3);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

            CustomAddFoodContainer(
              onTapAdd: () {
                NavigationService.navigateTo(Routes.addfoodScreen);
              },
            ),

            UIHelper.verticalSpace(120.h),
          ],
        ),
      ),
    );
  }
}
