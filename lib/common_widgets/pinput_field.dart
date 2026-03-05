// common_widget/pinput_field.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:pinput/pinput.dart';

class PinputField extends StatefulWidget {
  final TextEditingController? controller;

  const PinputField({super.key, this.controller});

  @override
  State<PinputField> createState() => _PinputFieldState();
}

class _PinputFieldState extends State<PinputField> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _pinController;
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _pinController = widget.controller ?? TextEditingController();
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _pinController.dispose();
    }
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = AppColors.primarycolor;
    // const fillColor = AppColors.primary5percent;
    // ignore: unused_local_variable
    const borderColor = AppColors.c1E2939;

    final defaultPinTheme = PinTheme(
      width: 82.w,
      height: 70.h,
      textStyle: const TextStyle(fontSize: 20, color: AppColors.c1E2939),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColors.c1E2939),
      ),
    );

    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Pinput(
            length: 4,
            controller: _pinController,
            focusNode: _focusNode,
            defaultPinTheme: defaultPinTheme,
            separatorBuilder: (_) => const SizedBox(width: 8),
            // validator: (value) =>
            //     value == '809719' ? null : 'Wrong code, please try again',
            onCompleted: (pin) => debugPrint('Completed: $pin'),
            cursor: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  width: 16,
                  height: 2,
                  color: AppColors.c1E2939,
                ),
              ],
            ),
            focusedPinTheme: defaultPinTheme.copyWith(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
              decoration: defaultPinTheme.decoration!.copyWith(
                borderRadius: BorderRadius.circular(16.r),
                color: AppColors.primarycolor,
                border: Border.all(color: focusedBorderColor, width: 1.w),
              ),
            ),
            submittedPinTheme: defaultPinTheme.copyWith(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
              decoration: defaultPinTheme.decoration!.copyWith(
                color: AppColors.primarycolor,
                borderRadius: BorderRadius.circular(16.r),
                border: Border.all(color: focusedBorderColor, width: 1.w),
              ),
            ),
            errorPinTheme: defaultPinTheme.copyBorderWith(
              border: Border.all(color: Colors.redAccent, width: 1.w),
            ),
          ),
        ],
      ),
    );
  }
}
