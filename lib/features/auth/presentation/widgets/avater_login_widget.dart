import 'package:flutter/material.dart';
import 'package:new_experinse/core/resource/color_manger.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AvaterLoginWidget extends StatelessWidget {
  const AvaterLoginWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(bottom: 10.h, top: 3.h),
        width: 30.w,
        height: 12.h,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColorManger.whiteColor,
        ),
        child: Icon(
          size: 5.h,
          color: AppColorManger.primaryColor,
          Icons.person,
        ),
      ),
    );
  }
}
