import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/constants/app_list.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/widget/custom_paywal_journey_card.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/widget/cutom_fitforgethelp_them_text.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/widget/paywalone_top_text_widget.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class PaywalScreen extends StatefulWidget {
  const PaywalScreen({super.key});

  @override
  State<PaywalScreen> createState() => _PaywalScreenState();
}

class _PaywalScreenState extends State<PaywalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),

        child: Column(
          children: [
            UIHelper.verticalSpace(50.h),
            PaywaloneTopTextWidget(),
            UIHelper.verticalSpace(34.h),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60.w),
              child: CutomFitforgethelpThemText(),
            ),

            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),

              itemCount: AppList().journeyCardlist.length,
              itemBuilder: (context, index) {
                return CustomPaywalJourneyCard(
                  onTap: () {},
                  imageUrl: AppList().journeyCardlist[index]['imageUrl'],
                  name: AppList().journeyCardlist[index]['name'],
                  subtitle: AppList().journeyCardlist[index]['subtitle'],

                  ratingone: AppList().journeyCardlist[index]['rating'] == '5'
                      ? AppIcons.star
                      : null,
                  ratingtwo: AppList().journeyCardlist[index]['rating'] == '5'
                      ? AppIcons.star
                      : null,
                  ratingthree: AppList().journeyCardlist[index]['rating'] == '5'
                      ? AppIcons.star
                      : null,
                  ratingfour: AppList().journeyCardlist[index]['rating'] == '5'
                      ? AppIcons.star
                      : null,
                  ratingfive: AppList().journeyCardlist[index]['rating'] == '5'
                      ? AppIcons.star
                      : null,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
