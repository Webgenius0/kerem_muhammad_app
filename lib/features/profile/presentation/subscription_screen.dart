import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_appbar.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_button_primary.dart';
import 'package:kerem_muhammad_app/features/profile/presentation/widget/custom_subscription_gopremiul_card.dart';
import 'package:kerem_muhammad_app/features/profile/presentation/widget/custom_subscription_premium_card.dart';
import 'package:kerem_muhammad_app/features/profile/presentation/widget/custom_subscription_standard_card.dart';
import 'package:kerem_muhammad_app/features/profile/presentation/widget/custom_subscription_starter_card.dart';
import 'package:kerem_muhammad_app/helpers/all_routes.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  int selectedPlanIndex = -1;
  void selectionPlan(int index) {
    setState(() {
      selectedPlanIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        onTap: () {
          NavigationService.goBack;
        },
        svgimg: AppIcons.arrowleft,
        title: 'Subscription',
      ),
      body: Column(
        children: [
          CustomSubscriptionGopremiulCard(
            title: 'Go Premium',
            subtitle:
                'Unlock advanced progress tracking and exclusive fitness features.',
          ),

          Expanded(
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: 80.w,
                      left: 80.w,
                      top: 24.h,
                    ),
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
                          Tab(text: 'Monthly'),
                          Tab(text: 'Yearly'),
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
                              UIHelper.verticalspace24,
                              CustomSubscriptionStarterCard(
                                title: 'Starter',
                                onTap: () {
                                  selectionPlan(0);
                                  NavigationService.navigateTo(
                                    Routes.subscriptionPaymentScreen,
                                  );
                                },
                                cardBorderColor: selectedPlanIndex == 0
                                    ? AppColors.cFF5722
                                    : AppColors.cFFFFFF,
                                planPrice: '€4.99',
                                plantype: 'month',
                                plandescription1:
                                    'Goal selection: Muscle building, fat loss',
                                plandescription2:
                                    'Standard training & meal plans',
                                plandescription3: 'Daily Al chat',
                                plandescription4: 'Basic design & simple coach',
                              ),

                              CustomSubscriptionStandartCard(
                                onTap: () {
                                  selectionPlan(1);
                                  NavigationService.navigateTo(
                                    Routes.subscriptionPaymentScreen,
                                  );
                                },
                                title: 'Standard',
                                cardBorderColor: selectedPlanIndex == 1
                                    ? AppColors.cFF5722
                                    : AppColors.cFFFFFF,
                                planPrice: '€9.99',
                                plantype: 'month',
                                plandescription1: 'Everything from Starter',
                                plandescription2:
                                    'Advanced goals + desired size focus',
                                plandescription3:
                                    'Animated 3D coach with exercise',
                                plandescription4:
                                    'Progress charts, daily progress',
                                plandescription5: 'Rewards & daily motivation',
                              ),

                              CustomSubscriptionPremiumCard(
                                onTap: () {
                                  selectionPlan(2);
                                  NavigationService.navigateTo(
                                    Routes.subscriptionPaymentScreen,
                                  );
                                },
                                cardBorderColor: selectedPlanIndex == 2
                                    ? AppColors.cFF5722
                                    : AppColors.cFFFFFF,
                                title: 'Premium',
                                planPrice: '€19.99',
                                plantype: 'month',
                                plandescription1:
                                    'Everything from Starter + Standard',
                                plandescription2:
                                    'Real-time Al coaching & tips',
                                plandescription3:
                                    'Progress simulation (what you could look like in 4 weeks)',
                                plandescription4:
                                    'Global leaderboard, competitions',
                                plandescription5:
                                    'Animated transformations & effects',
                              ),

                              UIHelper.verticalspace24,
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child: CustomButtonprimary(
                                  title: 'Start free trail',
                                  onTap: () {},
                                  buttonColor: AppColors.primaryColor,
                                  textColor: AppColors.cFFFFFF,
                                ),
                              ),

                              UIHelper.verticalspace32,
                            ],
                          ),
                        ),
                        //======================= Challanges ======================
                        SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              UIHelper.verticalspace24,
                              CustomSubscriptionStarterCard(
                                title: 'Starter',
                                onTap: () {
                                  selectionPlan(0);
                                  NavigationService.navigateTo(
                                    Routes.subscriptionPaymentScreen,
                                  );
                                },
                                cardBorderColor: selectedPlanIndex == 0
                                    ? AppColors.cFF5722
                                    : AppColors.cFFFFFF,
                                planPrice: '€4.99',
                                plantype: 'month',
                                plandescription1:
                                    'Goal selection: Muscle building, fat loss',
                                plandescription2:
                                    'Standard training & meal plans',
                                plandescription3: 'Daily Al chat',
                                plandescription4: 'Basic design & simple coach',
                              ),

                              CustomSubscriptionStandartCard(
                                onTap: () {
                                  selectionPlan(1);
                                  NavigationService.navigateTo(
                                    Routes.subscriptionPaymentScreen,
                                  );
                                },
                                title: 'Standard',
                                cardBorderColor: selectedPlanIndex == 1
                                    ? AppColors.cFF5722
                                    : AppColors.cFFFFFF,
                                planPrice: '€9.99',
                                plantype: 'month',
                                plandescription1: 'Everything from Starter',
                                plandescription2:
                                    'Advanced goals + desired size focus',
                                plandescription3:
                                    'Animated 3D coach with exercise',
                                plandescription4:
                                    'Progress charts, daily progress',
                                plandescription5: 'Rewards & daily motivation',
                              ),

                              CustomSubscriptionPremiumCard(
                                onTap: () {
                                  selectionPlan(2);
                                  NavigationService.navigateTo(
                                    Routes.subscriptionPaymentScreen,
                                  );
                                },
                                cardBorderColor: selectedPlanIndex == 2
                                    ? AppColors.cFF5722
                                    : AppColors.cFFFFFF,
                                title: 'Premium',
                                planPrice: '€19.99',
                                plantype: 'month',
                                plandescription1:
                                    'Everything from Starter + Standard',
                                plandescription2:
                                    'Real-time Al coaching & tips',
                                plandescription3:
                                    'Progress simulation (what you could look like in 4 weeks)',
                                plandescription4:
                                    'Global leaderboard, competitions',
                                plandescription5:
                                    'Animated transformations & effects',
                              ),

                              UIHelper.verticalspace24,
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child: CustomButtonprimary(
                                  title: 'Start free trail',
                                  onTap: () {},
                                  buttonColor: AppColors.primaryColor,
                                  textColor: AppColors.cFFFFFF,
                                ),
                              ),
                              UIHelper.verticalspace32,
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
