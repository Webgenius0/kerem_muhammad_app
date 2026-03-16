import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_appbar.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/features/profile/presentation/widget/custom_premium_member_card.dart';
import 'package:kerem_muhammad_app/features/profile/presentation/widget/custom_subscription_billing_information_card.dart';
import 'package:kerem_muhammad_app/features/profile/presentation/widget/custom_subscription_plan_billinghistory_card.dart';
import 'package:kerem_muhammad_app/features/profile/presentation/widget/custom_subscription_plan_card.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class SubscriptionPaymentPageScreen extends StatefulWidget {
  const SubscriptionPaymentPageScreen({super.key});

  @override
  State<SubscriptionPaymentPageScreen> createState() =>
      _SubscriptionPaymentPageScreenState();
}

class _SubscriptionPaymentPageScreenState
    extends State<SubscriptionPaymentPageScreen> {
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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomPremiumMemberCard(
              title: 'You’re a Premium Member 🎉',
              subtitle:
                  'Enjoy unlimited access to advanced tracking and exclusive fitness features.',
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'Plan',
                style: TextFontStyle.txtfontstyle18w700c212121,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 10.h, bottom: 24.h),
              child: CustomSubscriptionPlanCard(
                subscriptionType: 'Premium',
                subscriptionPrice: '59.99',
                subscrtiptionplan: 'year',
                billedText: 'Billed annually',
                nextPayment: 'Oct 7th 2025',
                onTapUpgradePlan: () {},
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'Billing information',
                style: TextFontStyle.txtfontstyle18w700c212121,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 10.h, bottom: 24.h),
              child: CustomSubscriptionBillingInformationCard(
                name: 'Srity',
                mail: 'abcd@gmail.com',
                onTapChangeHistory: () {},
                onTapbillingHistory: () {},
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'Plan',
                style: TextFontStyle.txtfontstyle18w700c212121,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: CustomSubscriptionPlanBillinghistoryCard(
                cardNumber: '************7452',
                onTapbillingHistory: () {},
              ),
            ),

            UIHelper.verticalspace32,
          ],
        ),
      ),
    );
  }
}
