import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/common_widgets/cached_network_image_widget.dart';
import 'package:kerem_muhammad_app/constants/app_list.dart';
import 'package:kerem_muhammad_app/features/neutrition/presentation/widget/custom_neutrition_todays_meals_card.dart';
import 'package:kerem_muhammad_app/features/neutrition/presentation/widget/custom_schedule_container_widget.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';
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
            ),
          ],
        ),
      ),
    );
  }
}
