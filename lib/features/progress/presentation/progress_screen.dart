import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/features/progress/presentation/widget/custom_month_widget.dart';
import 'package:kerem_muhammad_app/features/progress/presentation/widget/custom_three_month_widget.dart';
import 'package:kerem_muhammad_app/features/progress/presentation/widget/custom_week_widget.dart';
import 'package:kerem_muhammad_app/features/progress/presentation/widget/cutom_your%20progress_text_widget.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class ProgressScreen extends StatefulWidget {
  const ProgressScreen({super.key});

  @override
  State<ProgressScreen> createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CutomYourprogressTextWidget(),

          Expanded(
            child: DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  UIHelper.verticalSpace(24.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60.w),
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
                          Tab(text: 'Week'),
                          Tab(text: 'Month'),
                          Tab(text: '3 Month'),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        // ===================== weeek ========================
                        CustomWeekWidget(),

                        //======================== month =======================
                        CustomMonthWidget(),

                        //======================= 3 month ======================
                        CustomThreeMonthWidget(),
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
