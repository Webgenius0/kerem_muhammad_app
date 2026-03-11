import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';

class CustomNeutritionTodaysMealsCard extends StatelessWidget {
  const CustomNeutritionTodaysMealsCard({
    super.key,
    required this.title,
    required this.targetCalories,
    required this.takeCalories,
  });

  final String title;
  final String targetCalories;
  final String takeCalories;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      padding: EdgeInsets.all(16.sp),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(title), Text("$takeCalories/$takeCalories")],
      ),
    );
  }
}
