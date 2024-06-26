import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obscureText;
  final TextEditingController? controller;
  final double wValue;
  final double hValue;

  const MyTextField({
    super.key,
    required this.hintText,
    required this.icon,
    this.obscureText = false,
    this.controller,
    required this.wValue,
    required this.hValue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: Container(
        width: Get.width * wValue,
        height: Get.height * hValue,
        decoration: BoxDecoration(
            border: Border.all(
              color: textFieldInputColor,
            ),
            borderRadius: BorderRadius.circular(12.r)),
        child: Padding(
          padding: EdgeInsets.only(left: 24.w),
          child: TextField(
            controller: controller,
            style: TextStyle(
              fontSize: 16.sp,
              color: black,
              fontWeight: FontWeight.w400,
            ),
            obscureText: obscureText,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: hintTextStyle,
              suffixIcon: Icon(
                icon,
                color: iconColor,
                size: 20.h,
                weight: 400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
