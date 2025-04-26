import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_experinse/core/function/validation_function.dart';
import 'package:new_experinse/core/resource/color_manger.dart';
import 'package:new_experinse/core/resource/text_manger.dart';
import 'package:new_experinse/core/widget/button/main_button.dart';
import 'package:new_experinse/core/widget/text_filed/main_text_form_filed.dart';
import 'package:new_experinse/core/widget/text_utiles/main_text_utiles.dart';
import 'package:new_experinse/features/auth/presentation/domain/entities/req/loing_request_entity.dart';
import 'package:new_experinse/features/auth/presentation/widgets/avater_login_widget.dart';
import 'package:new_experinse/router/app_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    LoingRequestEntity loingRequestEntity = LoingRequestEntity();
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColorManger.primaryColor.withOpacity(0.5),
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //? Avater
                const AvaterLoginWidget(),
                TextUtiels(
                  padding: EdgeInsets.only(bottom: 0.5.h),
                  style: Theme.of(context).textTheme.labelLarge,
                  text: AppTextManger.loginAccount,
                ),
                TextUtiels(
                  padding: EdgeInsets.only(bottom: 6.h),
                  style: Theme.of(context).textTheme.bodySmall,
                  text: AppTextManger.welcomeBackToApp,
                ),
                //? Email Addrees :
                TextUtiels(
                  padding: EdgeInsets.only(bottom: 1.h),
                  style: Theme.of(context).textTheme.bodySmall,
                  text: AppTextManger.emailAddress,
                ),
                MainTextFormFiled(
                  hintText: FakeDataManger.fakeEmailAdrees,
                  validator: (value) =>
                      VilidationApp.validatorEmail(value: value ?? ""),
                  onChange: (value) => loingRequestEntity.emailAddrees = value,
                  borderWidht: 1.5,
                  borderColor: AppColorManger.blackColor,
                  paddingOut: EdgeInsets.only(bottom: 4.h),
                  textInputType: TextInputType.emailAddress,
                ), //?
                //? Password
                TextUtiels(
                  padding: EdgeInsets.only(bottom: 1.h),
                  style: Theme.of(context).textTheme.bodySmall,
                  text: AppTextManger.password,
                ),
                StatefulBuilder(
                  builder: (BuildContext context, setState) {
                    return MainTextFormFiled(
                      hintText: FakeDataManger.fakePassword,
                      validator: (value) =>
                          VilidationApp.validatorPassword(value: value ?? ""),
                      onChange: (value) => loingRequestEntity.password = value,
                      suffixIcon: !loingRequestEntity.isCheck
                          ? Icons.visibility_off
                          : Icons.visibility,
                      obscureText: loingRequestEntity.isCheck,
                      onPressedSuffixIcon: () =>
                          setState(() => loingRequestEntity.isCheck),
                      paddingOut: EdgeInsets.only(bottom: 7.h),
                      borderWidht: 1.5,
                      borderColor: AppColorManger.blackColor,
                      textInputType: TextInputType.emailAddress,
                    );
                  },
                ), //?
                //? Button Login
                Center(
                  child: MainButtonWidget(
                    width: 60.w,
                    height: 6.h,
                    radius: 10,
                    text: AppTextManger.login,
                    onPreesed: () {
                      if (formKey.currentState?.validate() ?? false) {
                        context.go(
                          RouteNamedScreens.selectProductScreenNameRoute,
                          extra: loingRequestEntity,
                        );
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
