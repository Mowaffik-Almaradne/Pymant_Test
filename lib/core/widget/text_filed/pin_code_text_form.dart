import 'package:flutter/material.dart';
import 'package:new_experinse/core/resource/color_manger.dart';
import 'package:new_experinse/core/resource/font_manger.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PinCodeFiledWidget extends StatelessWidget {
  const PinCodeFiledWidget(
      {super.key,
      this.onChange,
      this.onCompleted,
      this.inActiveColor,
      this.selectColor,
      this.validator});
  final Function(String)? onChange;
  final void Function(String)? onCompleted;
  final Color? inActiveColor;
  final Color? selectColor;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      keyboardType: TextInputType.number,
      appContext: context,
      length: 4,
      obscureText: false,
      validator: validator,
      animationType: AnimationType.fade,
      textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeightManger.fontWeightBold,
            fontSize: 24.sp,
          ),
      errorTextMargin: EdgeInsets.only(top: 4.h),
      pinTheme: PinTheme(
        selectedBorderWidth: 2,
        activeFillColor: AppColorManger.blackColor,
        fieldWidth: 15.w,
        inactiveColor: inActiveColor ?? AppColorManger.primaryColor,
        selectedColor: selectColor ?? AppColorManger.primaryColor,
        activeColor: AppColorManger.primaryColor,
        shape: PinCodeFieldShape.box,
        errorBorderColor: AppColorManger.validationColor,
        borderRadius: BorderRadius.circular(8),
      ),
      animationDuration: const Duration(milliseconds: 300),
      onChanged: onChange,
      onCompleted: onCompleted,
    );
  }
}
