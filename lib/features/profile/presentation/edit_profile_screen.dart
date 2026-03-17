import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
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
  final TextEditingController birthYearController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController activityController = TextEditingController();
  final TextEditingController goalWeightController = TextEditingController();
  final TextEditingController currentWeightController = TextEditingController();

  File? selectedImage;
  final ImagePicker picker = ImagePicker();

  Future<void> pickImage(ImageSource source) async {
    final XFile? image = await picker.pickImage(source: source);
    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
      });
    }
  }

  void showImageSourceBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(20.sp),
          height: 180.h,
          child: Column(
            children: [
              Container(
                width: 40.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              UIHelper.verticalspace20,
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text("Take Photo"),
                onTap: () {
                  Navigator.pop(context);
                  pickImage(ImageSource.camera);
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo),
                title: const Text("Choose from Gallery"),
                onTap: () {
                  Navigator.pop(context);
                  pickImage(ImageSource.gallery);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        onTap: () => NavigationService.goBack,
        title: 'Edit Profile',
        svgimg: AppIcons.arrowleft,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalspace24,
            CustomEditProfileCard(
              imageUrl:
                  "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=500",
              selectedImage: selectedImage, // Passed the picked file
              heightController: heightController,
              activityController: activityController,
              currentWrightController: currentWeightController,
              goalWeightController: goalWeightController,
              birthYearController: birthYearController,
              onTapEditprofile: showImageSourceBottomSheet,
            ),
            UIHelper.verticalspace24,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomButtonprimary(
                title: 'Save information',
                onTap: () {
                  // Handle save logic here
                },
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
