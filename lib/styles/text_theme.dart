import 'package:flutter/material.dart';
import 'package:getx_templete/styles/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyling {
  TextStyling._();

  static TextStyle text =
      GoogleFonts.inter(color: AppColors.black, fontWeight: FontWeight.w500);
  static TextStyle paragraph =
      GoogleFonts.inter(color: AppColors.black, fontWeight: FontWeight.w400);
  static TextStyle heading1 =
      GoogleFonts.inter(color: AppColors.black, fontWeight: FontWeight.w600);
  static TextStyle heading2 =
      GoogleFonts.inter(color: AppColors.black, fontWeight: FontWeight.w700);

  static TextStyle righteousText = GoogleFonts.righteous(
      color: AppColors.black, fontWeight: FontWeight.w500);
}
