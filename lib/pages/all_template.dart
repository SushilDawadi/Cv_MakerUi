import 'package:cv_maker/components/bottomBar.dart';
import 'package:cv_maker/components/custom/my_custom_app_bar.dart';
import 'package:cv_maker/components/custom/my_custom_heading_text.dart';
import 'package:cv_maker/components/custom/my_custom_template_heading.dart';
import 'package:cv_maker/components/custom/my_custom_template_tile.dart';
import 'package:cv_maker/pages/single_category_Template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllTemplatePage extends StatelessWidget {
  const AllTemplatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomAppBar(
        showDropButton: true,
        showUserDetails: false,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const SingleCategoryTemplate()));
        },
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 16.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyCustomHeadingText(
                        titleText: "Find Templates",
                        width: 370.w,
                        showTemplateImage: false,
                        subText:
                            "Find suitable templates based on your requirement."),
                    SizedBox(
                      height: 30.h,
                    ),
                    const MyCustomTemplateHeading(
                      titleText: "Basic",
                      seeAllText: "See All",
                    ),
                    const MyCustomTemplateTile(),
                    SizedBox(
                      height: 28.h,
                    ),
                    const MyCustomTemplateHeading(
                      titleText: "Professional",
                      seeAllText: "See All",
                    ),
                    const MyCustomTemplateTile(),
                    SizedBox(
                      height: 28.h,
                    ),
                    const MyCustomTemplateHeading(
                      titleText: "Educational",
                      seeAllText: "See All",
                    ),
                    const MyCustomTemplateTile(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const MyBottomBar(),
    );
  }
}