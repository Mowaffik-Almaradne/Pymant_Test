import 'package:flutter/material.dart';
import 'package:new_experinse/core/resource/color_manger.dart';
import 'package:new_experinse/core/widget/text_utiles/main_text_utiles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SnackBarUtil {
  //! function snack bar
  static void showSnackBar({
    required String message,
    required BuildContext context,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: AppColorManger.whiteColor,
        content: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 1.h,
          ),
          //! Text Snack Bar
          child: Align(
            alignment: Alignment.center,
            child: TextUtiels(
              text: message,
              color: AppColorManger.validationColor,
            ),
          ), //!
        ),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: AppColorManger.validationColor,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
