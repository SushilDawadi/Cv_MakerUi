import 'package:cv_maker/assets/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const MyButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: SizedBox(
          width: double.infinity,
          child: TextButton(
            onPressed: () {
              onPressed!();
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(primaryColor),
              foregroundColor: MaterialStateProperty.all(Colors.white),
              padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: 10.w, vertical: 14.h),
              ),
            ),
            child: Text(
              text,
              style: TextStyle(fontSize: 20.sp),
            ),
          )),
    );
  }
}