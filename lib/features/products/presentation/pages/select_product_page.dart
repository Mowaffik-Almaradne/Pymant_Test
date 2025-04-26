import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_experinse/core/resource/color_manger.dart';
import 'package:new_experinse/core/resource/text_manger.dart';
import 'package:new_experinse/core/widget/button/main_button.dart';
import 'package:new_experinse/core/widget/main/main_app_bar_widgte.dart';
import 'package:new_experinse/features/auth/presentation/domain/entities/req/loing_request_entity.dart';
import 'package:new_experinse/router/app_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SelectProductPage extends StatelessWidget {
  const SelectProductPage({super.key, required this.data});
  final LoingRequestEntity data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBarWidgte(
        mainText: AppTextManger.products,
      ),
      body: Center(
        child: MainButtonWidget(
          text: AppTextManger.selectProduct,
          height: 6.h,
          width: 60.w,
          radius: 12,
          colorButton: AppColorManger.primaryColor,
          onPreesed: () {
            context.push(RouteNamedScreens.infoProfileScreenNameRoute,
                extra: data);
          },
        ),
      ),
    );
  }
}
