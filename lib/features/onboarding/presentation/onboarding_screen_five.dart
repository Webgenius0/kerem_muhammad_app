import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_app_bar_onboarding.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_button_primary.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/widget/custom_onboarding_five_text_widget.dart';
import 'package:kerem_muhammad_app/helpers/all_routes.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class OnboardingScreenFive extends StatefulWidget {
  const OnboardingScreenFive({super.key});

  @override
  State<OnboardingScreenFive> createState() => _OnboardingScreenFiveState();
}

class _OnboardingScreenFiveState extends State<OnboardingScreenFive> {
  late FixedExtentScrollController _scrollController;
  int selectedIndex = DateTime.now().year - 1900;

  final List<int> years = List.generate(150, (index) => 1900 + index);

  @override
  void initState() {
    super.initState();
    _scrollController = FixedExtentScrollController(initialItem: selectedIndex);
  }

  TextStyle _yearStyle(int index) {
    int distance = (index - selectedIndex).abs();

    if (distance == 0) {
      return TextFontStyle.txtfontstyle64w800c212121;
    } else if (distance == 1) {
      return TextFontStyle.txtfontstyle40w700c9EA0A5;
    } else if (distance == 2) {
      return TextFontStyle.txtfontstyle30w700cD1D5DB;
    } else {
      return TextFontStyle.txtfontstyle40w700c9EA0A5;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: CustomAppBarOnboarding(
        onTap: () {
          NavigationService.goBack;
        },
        currentStep: '5',
        svgimg: AppIcons.arrowleft,
      ),

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            UIHelper.verticalSpace(20.h),
            const CustomOnboardingFiveTextWidget(),

            UIHelper.verticalSpace(40.h),

            SizedBox(
              height: 300.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ListWheelScrollView.useDelegate(
                    controller: _scrollController,
                    itemExtent: 70.h,
                    diameterRatio: 100,
                    perspective: 0.001,
                    physics: const BouncingScrollPhysics(),
                    onSelectedItemChanged: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    childDelegate: ListWheelChildBuilderDelegate(
                      childCount: years.length,
                      builder: (context, index) {
                        if (index == selectedIndex)
                          return const SizedBox.shrink();
                        return Center(
                          child: Text(
                            years[index].toString(),
                            style: _yearStyle(index),
                          ),
                        );
                      },
                    ),
                  ),

                  IgnorePointer(
                    child: Container(
                      height: 70.h,
                      margin: EdgeInsets.symmetric(horizontal: 24.w),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200.withAlpha(80),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                  ),

                  Text(
                    years[selectedIndex].toString(),
                    style: _yearStyle(selectedIndex),
                  ),
                ],
              ),
            ),

            UIHelper.verticalSpace(120.h),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: CustomButtonprimary(
                title: 'Next',
                onTap: () {
                  int selectedYear = years[selectedIndex];
                  debugPrint("Selected Year: $selectedYear");
                  NavigationService.navigateTo(Routes.onboardingScreenSix);
                },
                buttonColor: AppColors.primaryColor,
                textColor: AppColors.cFFFFFF,
              ),
            ),

            UIHelper.verticalspace32,
          ],
        ),
      ),
    );
  }
}
