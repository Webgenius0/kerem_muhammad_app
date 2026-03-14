import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_appbar.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_button_primary.dart';
import 'package:kerem_muhammad_app/features/profile/presentation/widget/custom_edit_profile_card.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController birghYearController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController activityController = TextEditingController();
  TextEditingController goalWeightController = TextEditingController();
  TextEditingController currentWeightController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        onTap: () {
          NavigationService.goBack;
        },
        title: 'Edit Profile',
        svgimg: AppIcons.arrowleft,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalspace24,
            CustomEditProfileCard(
              imageUrl:
                  "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
              heightController: heightController,
              activityController: activityController,
              currentWrightController: currentWeightController,

              goalWeightController: goalWeightController,
              birthYearController: birghYearController,
              onTapEditprofile: () {},
            ),
            UIHelper.verticalspace24,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomButtonprimary(
                title: 'Save information',
                onTap: () {},
                buttonColor: AppColors.primaryColor,
                textColor: AppColors.cFFFFFF,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
