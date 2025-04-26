import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:new_experinse/core/resource/color_manger.dart';
import 'package:new_experinse/core/resource/lottie_manger.dart';
import 'package:new_experinse/router/app_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late Timer timer;
  @override
  void initState() {
    timer = Timer(
      const Duration(seconds: 5),
      () => context.go(RouteNamedScreens.loginScreenNameRoute),
    );
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColorManger.primaryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5.h),
              child: Lottie.asset(
                width: 100.w,
                height: 25.h,
                LottieManger.introIconPath,
              ),
            ),
            Lottie.asset(
              width: 100.w,
              height: 50.h,
              LottieManger.lodarIconPath,
            ),
          ],
        ),
      ),
    );
  }
}
