import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_experinse/core/function/functional_style.dart';
import 'package:new_experinse/core/resource/color_manger.dart';
import 'package:new_experinse/core/resource/font_manger.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MainTextFormFiled extends StatelessWidget {
  const MainTextFormFiled({
    super.key,
    this.hintText,
    this.onChange,
    required this.textInputType,
    this.filedWidth,
    this.filedHeight,
    this.validator,
    this.onTap,
    this.onFieldSubmitted,
    this.inputFormatter,
    this.onPressed,
    this.onPressedSuffixIcon,
    this.fillColor,
    this.borderColor,
    this.borderWidht,
    this.obscureText,
    this.readOnly,
    this.suffixIcon,
    this.controller,
    this.hintTextColor,
    this.fontSize,
    this.initialValue,
    this.paddingOut,
  });
  final String? hintText;
  final TextInputType textInputType;
  final Function(String)? onChange;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatter;
  final void Function()? onTap;
  final void Function(String)? onFieldSubmitted;
  final void Function()? onPressed;
  final double? filedWidth;
  final double? filedHeight;
  final void Function()? onPressedSuffixIcon;
  final Color? fillColor;
  final Color? borderColor;
  final double? borderWidht;
  final bool? obscureText;
  final bool? readOnly;
  final IconData? suffixIcon;
  final TextEditingController? controller;
  final Color? hintTextColor;
  final double? fontSize;
  final String? initialValue;
  final EdgeInsetsGeometry? paddingOut;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingOut ?? const EdgeInsets.all(0),
      child: TextFormField(
        initialValue: initialValue,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 16.sp,
              color: AppColorManger.blackColor,
            ),
        controller: controller,
        readOnly: readOnly ?? false,
        obscureText: obscureText ?? false,
        textInputAction: TextInputAction.next,
        inputFormatters: inputFormatter,
        keyboardType: textInputType,
        decoration: InputDecoration(
          filled: true,
          fillColor: fillColor ?? AppColorManger.whiteColor,
          hintText: hintText,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 5.w,
            vertical: 1.h,
          ),
          suffixIcon: IconButton(
            onPressed: onPressedSuffixIcon,
            icon: Icon(
              suffixIcon,
              color: AppColorManger.primaryColor,
            ),
          ),
          hintStyle: Theme.of(context).textTheme.displayMedium?.copyWith(
                fontSize: fontSize ?? FontSizeManger.s15,
                fontWeight: FontWeightManger.fontWeightSemiBold,
                color: hintTextColor ?? Colors.grey,
              ),
          errorStyle: Theme.of(context).textTheme.displayMedium?.copyWith(
                fontSize: fontSize ?? FontSizeManger.s15,
                fontWeight: FontWeightManger.fontWeightSemiBold,
                color: AppColorManger.validationColor,
              ),
          //? border :
          enabledBorder: FunctionalStyle.outlineInputBorder(
            circular: 10,
            width: borderWidht ?? 0,
            color: borderColor ?? Colors.transparent,
          ),
          focusedBorder: FunctionalStyle.outlineInputBorder(
            circular: 10,
            width: borderWidht ?? 0,
            color: borderColor ?? Colors.transparent,
          ),
          errorBorder: FunctionalStyle.outlineInputBorder(
              circular: 10,
              width: borderWidht ?? 0,
              color: AppColorManger.primaryColor),
          focusedErrorBorder: FunctionalStyle.outlineInputBorder(
            circular: 10,
            width: borderWidht ?? 0,
            color: Colors.transparent,
          ),
        ),
        //? Function Event :
        onChanged: onChange,
        validator: validator,
        onFieldSubmitted: onFieldSubmitted,
        onTap: onTap,
      ),
    );
  }
}
