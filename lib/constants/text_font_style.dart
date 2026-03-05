import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';

class TextFontStyle {
  TextFontStyle._();

  static final txtfontstyle26w600cFFFFF = GoogleFonts.poppins(
    color: AppColors.cFFFFFF,
    fontSize: 26.sp,
    fontWeight: FontWeight.w600,
  );

  static final txtfontstyle24w500primaryColor = GoogleFonts.poppins(
    color: AppColors.primarycolor,
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
  );
}
