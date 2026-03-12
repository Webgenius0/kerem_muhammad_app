import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_button_primary.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_dropdown_container.dart';
import 'package:kerem_muhammad_app/constants/app_list.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/features/neutrition/presentation/widget/custom_add_food_widget.dart';
import 'package:kerem_muhammad_app/features/neutrition/presentation/widget/custom_camera_widget.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class AddFoodScreen extends StatefulWidget {
  const AddFoodScreen({super.key});

  @override
  State<AddFoodScreen> createState() => _AddFoodScreenState();
}

class _AddFoodScreenState extends State<AddFoodScreen> {
  String? selectedCategory;

  final TextEditingController foodNameController = TextEditingController();
  final TextEditingController protinController = TextEditingController();
  final TextEditingController caloriesController = TextEditingController();
  final TextEditingController carbsController = TextEditingController();
  final TextEditingController fatController = TextEditingController();
  final TextEditingController ingredientController = TextEditingController();

  List<String> selectedIngredients = [];
  List<String> filteredIngredients = [];

  @override
  void dispose() {
    foodNameController.dispose();
    protinController.dispose();
    caloriesController.dispose();
    carbsController.dispose();
    fatController.dispose();
    ingredientController.dispose();
    super.dispose();
  }

  void searchIngredient(String value) {
    setState(() {
      filteredIngredients = AppList().allIngredients
          .where(
            (item) =>
                item.toLowerCase().contains(value.toLowerCase()) &&
                !selectedIngredients.contains(item),
          )
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(80.h),
            CustomCameraWidget(onTapCamera: () {}, onTapChoosePicture: () {}),
            UIHelper.verticalspace16,
            Text('Category', style: TextFontStyle.txtfontstyle14w500c212121),
            UIHelper.verticalSpace(8.h),
            CustomDropdownContainer(
              dropdownwidget: Theme(
                data: Theme.of(context).copyWith(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    dropdownColor: AppColors.cFFFFFF,
                    focusColor: Colors.transparent,
                    hint: Text(
                      'Select',
                      style: TextFontStyle.txtfontstyle14w400c919EAB,
                    ),
                    borderRadius: BorderRadius.circular(8.r),
                    value: selectedCategory,
                    icon: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: AppColors.c919EAB,
                    ),
                    selectedItemBuilder: (BuildContext context) {
                      return AppList().foodCatagoryList.map((String item) {
                        return Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            item,
                            style: TextFontStyle.txtfontstyle14w500c212121,
                          ),
                        );
                      }).toList();
                    },
                    items: AppList().foodCatagoryList.map((String item) {
                      bool isSelected = selectedCategory == item;
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Container(
                          width: double.infinity,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            color: isSelected
                                ? AppColors.cFF5722
                                : Colors.transparent,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                item,
                                style: TextFontStyle.txtfontstyle14w500c212121
                                    .copyWith(
                                      color: isSelected
                                          ? AppColors.cFFFFFF
                                          : AppColors.c414141,
                                    ),
                              ),
                              if (isSelected)
                                const Icon(
                                  Icons.check_circle,
                                  color: Colors.white,
                                  size: 20,
                                ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedCategory = newValue;
                      });
                    },
                  ),
                ),
              ),
            ),
            CustomAddFoodWidget(
              foodController: foodNameController,
              protinController: protinController,
              caloriesController: caloriesController,
              carbsController: carbsController,
              fatController: fatController,
            ),
            UIHelper.verticalspace16,
            Text('Ingredients', style: TextFontStyle.txtfontstyle14w500c212121),
            UIHelper.verticalSpace(8.h),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  ...selectedIngredients.map((item) {
                    return Chip(
                      label: Text(
                        item,
                        style: TextFontStyle.txtfontstyle12w400c454545,
                      ),
                      backgroundColor: AppColors.cEEEEEEE,
                      deleteIcon: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            top: -10.h,
                            right: -6.w,
                            child: SvgPicture.asset(
                              AppIcons.cross,
                              height: 16.h,
                              width: 16.w,
                            ),
                          ),
                        ],
                      ),
                      onDeleted: () {
                        setState(() {
                          selectedIngredients.remove(item);
                        });
                      },
                    );
                  }),
                  TextField(
                    controller: ingredientController,
                    decoration: InputDecoration(
                      hintText: "Ingredients",
                      border: InputBorder.none,
                    ),
                    onChanged: searchIngredient,
                  ),
                ],
              ),
            ),
            if (filteredIngredients.isNotEmpty)
              Container(
                margin: EdgeInsets.only(top: 4.h),
                width: 200.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: AppColors.cF9FAFB,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: filteredIngredients.length,
                  itemBuilder: (context, index) {
                    final item = filteredIngredients[index];
                    return InkWell(
                      onTap: () {
                        setState(() {
                          selectedIngredients.add(item);
                          ingredientController.clear();
                          filteredIngredients.clear();
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                          vertical: 4.h,
                        ),
                        child: Center(
                          child: Text(
                            item,
                            style: TextFontStyle.txtfontstyle13w700c000000,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

            UIHelper.verticalspace16,

            CustomButtonprimary(
              title: 'Save',
              onTap: () {},
              buttonColor: AppColors.primaryColor,
              textColor: AppColors.cFFFFFF,
            ),

            UIHelper.verticalspace32,
          ],
        ),
      ),
    );
  }
}
