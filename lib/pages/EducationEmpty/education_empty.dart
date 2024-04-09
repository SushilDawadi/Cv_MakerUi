import 'package:cv_maker/components/my_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EducationEmpty extends StatelessWidget {
  const EducationEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 16.h),
          child: const SingleChildScrollView(
              child: MyErrorPage(
            errorText: "No education details found",
          )),
        ),
      ),
    );
  }
}
