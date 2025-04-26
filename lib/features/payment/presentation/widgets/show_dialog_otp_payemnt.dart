import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_experinse/core/function/validation_function.dart';
import 'package:new_experinse/core/resource/color_manger.dart';
import 'package:new_experinse/core/resource/text_manger.dart';
import 'package:new_experinse/core/widget/button/main_button.dart';
import 'package:new_experinse/core/widget/text_filed/pin_code_text_form.dart';
import 'package:new_experinse/core/widget/text_utiles/main_text_utiles.dart';
import 'package:new_experinse/features/payment/presentation/widgets/show_dialog_done_paymant.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ShowDailogOtpPayment extends StatelessWidget {
  const ShowDailogOtpPayment({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return PopScope(
      canPop: false,
      child: Form(
        key: formKey,
        child: AlertDialog(
          title: Column(
            children: [
              TextUtiels(
                textAlign: TextAlign.center,
                text: AppTextManger.enterPINCode,
                padding: EdgeInsets.only(bottom: 1.h),
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              TextUtiels(
                textAlign: TextAlign.center,
                text: AppTextManger.doneSendCodeToMobilePhone,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          content: SizedBox(
            width: 100.w,
            child: PinCodeFiledWidget(
              onChange: (value) {},
              inActiveColor: AppColorManger.primaryColor,
              selectColor: AppColorManger.blackColor,
              validator: (value) =>
                  VilidationApp.validatorOtp(value: value ?? ""),
            ),
          ),
          actions: [
            Center(
              child: MainButtonWidget(
                width: 60.w,
                height: 6.h,
                radius: 10,
                text: AppTextManger.verfiy,
                onPreesed: () {
                  if (formKey.currentState?.validate() ?? false) {
                    context.pop();
                    showDialog(
                      context: context,
                      builder: (context) => const DialogPaymentSuccessful(),
                    );
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}


