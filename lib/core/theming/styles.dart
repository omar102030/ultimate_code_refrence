import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ultimate_code_refrence/core/theming/colors.dart';

class TextStyles {
  static TextStyle font24Black700weight = TextStyle(
      fontSize: 24.sp, color: Colors.black, fontWeight: FontWeight.w700);
  static TextStyle font32BlueBold = TextStyle(
      fontSize: 32.sp,
      color: ColorsManager.primaryColor,
      fontWeight: FontWeight.bold);
  static TextStyle font13GreyRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.normal,
    color: ColorsManager.grey,
  );
  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
}
