import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/fonts/font.dart';
import 'package:cv_maker/components/custom/my_custom_botton.dart';
import 'package:cv_maker/components/custom/my_custom_check_box.dart';
import 'package:cv_maker/components/custom/my_custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddEducation extends StatefulWidget {
  const AddEducation({super.key});

  @override
  State<AddEducation> createState() => _AddEducationState();
}

class _AddEducationState extends State<AddEducation> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _dateController = TextEditingController();
    Future<void> selectDate() async {
      DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100),
      );
      if (_picked != null) {
        setState(() {
          _dateController.text = _picked.toString().split(" ")[0];
        });
      }
    }

    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 24.h),
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 29.h),
                  child: Container(
                    width: 65.w,
                    height: 5.h,
                    decoration: BoxDecoration(
                      color: black,
                      borderRadius: BorderRadius.circular(99.5.r),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Add Education",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontFamily: fontFamily,
                          fontWeight: FontWeight.w600),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.close_rounded),
                    )
                  ],
                ),
                const MyTextField(
                    value: 1,
                    hintText: "School / College / University",
                    icon: Icons.apartment),
                const MyTextField(
                    value: 1, hintText: "Course / Degree", icon: Icons.school),
                const MyTextField(
                    value: 1, hintText: "Cgpa/ Grade", icon: Icons.edit),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyTextField(
                        controller: _dateController,
                        onTap: selectDate,
                        value: 0.45,
                        hintText: "Start Date",
                        icon: Icons.date_range,
                      ),
                      MyTextField(
                        controller: _dateController,
                        onTap: selectDate,
                        value: 0.45,
                        hintText: "End Date",
                        icon: Icons.date_range,
                      ),
                    ]),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 7.h),
                  child: Row(
                    children: [
                      const MyCustomCheckBox(),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        "Currently studying here",
                        style: TextStyle(
                          fontFamily: fontFamily,
                          fontSize: 14.sp,
                          color: subTextColor,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 33.h,
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.r),
                    border: Border.all(
                      color: const Color(0xffE5E5E5),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 8.h, left: 16.h),
                    child: TextField(
                      maxLines: 10,
                      decoration: InputDecoration(
                        hintText: "Description . . .",
                        hintStyle: TextStyle(
                          color: iconColor,
                          fontSize: 14.sp,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                          vertical: 20.h,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButton(
                      text: "Help",
                      width: 129.w,
                      fontSize: 20.sp,
                      borderColor: true,
                    ),
                    MyButton(
                      text: "Save",
                      width: 129.w,
                      fontSize: 20.sp,
                      borderColor: false,
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}