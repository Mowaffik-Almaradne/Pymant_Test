import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_experinse/core/resource/color_manger.dart';
import 'package:new_experinse/core/resource/font_manger.dart';

class TextUtiels extends StatelessWidget {
  const TextUtiels({
    super.key,
    required this.text,
    this.color,
    this.textAlign,
    this.shadows,
    this.height,
    this.style,
    this.maxLines,
    this.padding,
    this.textOverflow,
  });
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final List<Shadow>? shadows;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final TextStyle? style;
  final int? maxLines;
  final TextOverflow? textOverflow;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0),
      child: Text(
        maxLines: maxLines,
        softWrap: true,
        textAlign: textAlign ?? TextAlign.end,
        overflow: textOverflow ?? TextOverflow.visible,
        text,
        style: style ??
            TextStyle(
              fontSize: FontSizeManger.s16,
              color: color ?? AppColorManger.blackColor,
              shadows: shadows,
              height: height,
              fontWeight: FontWeightManger.fontWeightSemiBold,
            ),
      ),
    );
  }
}
