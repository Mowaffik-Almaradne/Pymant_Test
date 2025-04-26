import 'package:flutter/material.dart';
import 'package:new_experinse/core/resource/color_manger.dart';
import 'package:new_experinse/core/widget/text_utiles/main_text_utiles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MainAppBarWidgte extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBarWidgte({super.key, required this.mainText});
  final String mainText;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: AppColorManger.whiteColor,
        ),
        onPressed: () {
          Navigator.pop(context); // Go back to previous screen
        },
      ),
      title: TextUtiels(
        style: Theme.of(context).textTheme.titleLarge,
        text: mainText,
      ),
      backgroundColor: AppColorManger.primaryColor,
    );
  }

  @override
  Size get preferredSize => Size(10.w, 7.h);
}
