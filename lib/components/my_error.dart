import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/fonts/font.dart';
import 'package:cv_maker/components/button.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyErrorPage extends StatelessWidget {
  final String errorText;
  final void Function()? onPressed;
  const MyErrorPage({super.key, required this.errorText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.0.w, vertical: 10.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              SizedBox(
                height: 170.h,
              ),
              Icon(
                Icons.not_interested_rounded,
                size: 64.w,
                color: primaryColor,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16.h),
                child: Text(
                  errorText,
                  style: TextStyle(
                      fontFamily: fontFamily,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700),
                ),
              ),
              MyButton(
                text: "Add",
                width: 164.w,
                fontSize: 13.sp,
                borderColor: true,
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 241.h,
                ),
                MyButton(
                  text: "Next",
                  width: 129.w,
                  fontSize: 20.sp,
                  borderColor: false,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
