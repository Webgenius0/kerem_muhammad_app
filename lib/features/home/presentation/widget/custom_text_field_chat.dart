import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';

class CustomTextFieldChat extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator;
  final bool isPassword;
  final String? suffixIcon;
  final String? prefixIcon;
  final TextInputType? keyboardType;
  final TextInputAction? inputAction;
  final bool readOnly;
  final VoidCallback? onTap;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final double? borderRadius;
  final Color? borderColor;
  final Color? fillColor;
  final int? maxlines;
  final void Function(String)? onSubmitted;

  const CustomTextFieldChat({
    super.key,
    required this.controller,
    required this.hintText,
    this.validator,
    this.isPassword = false,
    this.keyboardType,
    this.suffixIcon,
    this.readOnly = false,
    this.onTap,
    this.prefixIcon,
    this.inputAction,
    this.hintStyle,
    this.borderRadius,
    this.borderColor,
    this.fillColor,
    this.maxlines,
    this.style,
    this.onSubmitted,
  });

  @override
  State<CustomTextFieldChat> createState() => _CustomTextFieldChatState();
}

class _CustomTextFieldChatState extends State<CustomTextFieldChat> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: widget.isPassword ? 1 : (widget.maxlines ?? 1),
      controller: widget.controller,
      obscureText: _obscureText,
      cursorColor: AppColors.c1E2939,
      cursorRadius: Radius.circular(8.r),
      keyboardType: widget.keyboardType,
      textInputAction: widget.inputAction,
      style: widget.style ?? TextFontStyle.txtfontstyle16w600c212121,
      decoration: InputDecoration(
        fillColor: widget.fillColor ?? AppColors.cFFFFFF,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 50.r),
          borderSide: BorderSide(color: AppColors.cDFE3E8, width: 1.5.w),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 50.r),
          borderSide: BorderSide(color: AppColors.cDFE3E8, width: 1.5.w),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 50.r),
          borderSide: BorderSide(
            color: widget.borderColor ?? AppColors.cDFE3E8,
            width: 1.5.w,
          ),
        ),
        hintText: widget.hintText,
        hintStyle: widget.hintStyle ?? TextFontStyle.txtfontstyle14w400c919EAB,
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  color: AppColors.primarycolor,
                ),
              )
            : (widget.suffixIcon != null
                  ? Padding(
                      padding: EdgeInsets.only(right: 2.w),
                      child: SvgPicture.asset(
                        widget.suffixIcon!,
                        height: 24.h,
                        width: 24.w,
                      ),
                    )
                  : null),
        prefixIcon: widget.prefixIcon != null
            ? Padding(
                padding: EdgeInsets.all(20.r),
                child: SvgPicture.asset(
                  widget.prefixIcon!,
                  height: 24.h,
                  width: 24.w,
                ),
              )
            : null,
        contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 13.h),
      ),
      validator: widget.validator,
      readOnly: widget.readOnly,
      onTap: widget.onTap,
      onFieldSubmitted: widget.onSubmitted,
    );
  }
}
