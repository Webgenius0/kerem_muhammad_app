import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';

class CustomTextFieldFocushedUnfocushed extends StatefulWidget {
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

  const CustomTextFieldFocushedUnfocushed({
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
  State<CustomTextFieldFocushedUnfocushed> createState() =>
      _CustomTextFieldFocushedUnfocushedState();
}

class _CustomTextFieldFocushedUnfocushedState
    extends State<CustomTextFieldFocushedUnfocushed> {
  late bool _obscureText;
  late FocusNode _focusNode;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
    _focusNode = FocusNode();

    _focusNode.addListener(() {
      if (mounted) {
        setState(() {
          _isFocused = _focusNode.hasFocus;
        });
      }
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: _focusNode,
      controller: widget.controller,
      maxLines: widget.isPassword ? 1 : (widget.maxlines ?? 1),
      obscureText: _obscureText,
      cursorColor: AppColors.c1E2939,
      cursorRadius: Radius.circular(8.r),
      keyboardType: widget.keyboardType,
      textInputAction: widget.inputAction,
      style: widget.style ?? TextFontStyle.txtfontstyle24w500primaryColor,
      readOnly: widget.readOnly,
      onTap: widget.onTap,
      validator: widget.validator,
      onFieldSubmitted: widget.onSubmitted,
      decoration: InputDecoration(
        filled: true,
        fillColor: widget.fillColor ?? AppColors.cFFFFFF,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 50.r),
          borderSide: BorderSide(color: AppColors.cFFFFFF, width: 1.w),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 50.r),
          borderSide: BorderSide(color: AppColors.cFFFFFF, width: 1.w),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 50.r),
          borderSide: BorderSide(
            color: widget.borderColor ?? AppColors.primarycolor,
            width: 1.w,
          ),
        ),

        hintText: widget.hintText,
        hintStyle: widget.hintStyle ?? TextFontStyle.txtfontstyle26w600cFFFFF,

        prefixIcon: widget.prefixIcon != null
            ? Padding(
                padding: EdgeInsets.all(20.r),
                child: SvgPicture.asset(
                  widget.prefixIcon!,
                  height: 24.h,
                  width: 24.w,
                  colorFilter: ColorFilter.mode(
                    _isFocused
                        ? widget.borderColor ?? AppColors.primarycolor
                        : AppColors.c1E2939,
                    BlendMode.srcIn,
                  ),
                ),
              )
            : null,

        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  color: AppColors.c1E2939,
                ),
              )
            : (widget.suffixIcon != null
                  ? Padding(
                      padding: EdgeInsets.all(20.r),
                      child: SvgPicture.asset(
                        widget.suffixIcon!,
                        height: 24.h,
                        width: 24.w,
                        colorFilter: ColorFilter.mode(
                          _isFocused
                              ? widget.borderColor ?? AppColors.primarycolor
                              : AppColors.c1E2939,
                          BlendMode.srcIn,
                        ),
                      ),
                    )
                  : null),

        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
      ),
    );
  }
}
