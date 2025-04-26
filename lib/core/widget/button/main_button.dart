import 'package:flutter/material.dart';
import 'package:new_experinse/core/resource/color_manger.dart';
import 'package:new_experinse/core/widget/text_utiles/main_text_utiles.dart';

class MainButtonWidget extends StatelessWidget {
  const MainButtonWidget(
      {super.key,
      required this.text,
      required this.onPreesed,
      required this.width,
      required this.height,
      this.colorButton,
      required this.radius,
      this.boxBorder});
  final Color? colorButton;
  final BoxBorder? boxBorder;
  final double radius;
  final String text;
  final double width;
  final double height;
  final void Function()? onPreesed;
  @override
  Widget build(BuildContext context) {
    //! Button All App
    return InkWell(
      onTap: onPreesed,
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        decoration: BoxDecoration(
          border: boxBorder,
          borderRadius: BorderRadius.circular(radius),
          color: colorButton ?? AppColorManger.primaryColor,
        ),
        child: TextUtiels(
          text: text,
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
    );
  }
}
