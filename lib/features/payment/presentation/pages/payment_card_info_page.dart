import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:new_experinse/core/function/validation_function.dart';
import 'package:new_experinse/core/resource/color_manger.dart';
import 'package:new_experinse/core/resource/lottie_manger.dart';
import 'package:new_experinse/core/resource/text_manger.dart';
import 'package:new_experinse/core/widget/button/main_button.dart';
import 'package:new_experinse/core/widget/main/main_app_bar_widgte.dart';
import 'package:new_experinse/core/widget/snack_bar/main_snack_bar_widget.dart';
import 'package:new_experinse/core/widget/text_filed/main_text_form_filed.dart';
import 'package:new_experinse/core/widget/text_utiles/main_text_utiles.dart';
import 'package:new_experinse/features/payment/domain/entities/req/payment_card_request_entity.dart';
import 'package:new_experinse/features/payment/presentation/logic/payment_logic.dart';
import 'package:new_experinse/features/payment/presentation/widgets/show_dialog_otp_payemnt.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PaymentCardInfoPage extends StatelessWidget {
  const PaymentCardInfoPage({super.key, required this.nameCard});
  final String nameCard;
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    PaymentCardRequestEntity requestEntity = PaymentCardRequestEntity();
    return Scaffold(
      appBar: MainAppBarWidgte(mainText: nameCard),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 6.h),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Lottie.asset(
                  width: 80.w,
                  LottieManger.cardPaymentLottie,
                ),
              ),
              Center(
                child: TextUtiels(
                  padding: EdgeInsets.only(top: 2.h),
                  text: AppTextManger.cardDetails,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              Center(
                child: TextUtiels(
                  padding: EdgeInsets.only(bottom: 3.h),
                  text: AppTextManger.enterYourCardInformationForPayment,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              //? User Name :
              TextUtiels(
                text: AppTextManger.userName,
                padding: EdgeInsets.only(bottom: 1.h),
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: AppColorManger.primaryColor),
              ),
              MainTextFormFiled(
                hintText: FakeDataManger.fakeUserName,
                validator: (value) =>
                    VilidationApp.validator(value: value ?? ""),
                onChange: (value) => requestEntity.userName = value,
                borderWidht: 1.5,
                borderColor: AppColorManger.primaryColor,
                paddingOut: EdgeInsets.only(bottom: 4.h),
                textInputType: TextInputType.emailAddress,
              ), //?
              //? Card Number
              TextUtiels(
                text: AppTextManger.cardNumber,
                padding: EdgeInsets.only(bottom: 1.h),
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: AppColorManger.primaryColor),
              ),
              MainTextFormFiled(
                hintText: FakeDataManger.fakeCardNumber,
                validator: (value) =>
                    VilidationApp.validatorCardNumber(value: value ?? ""),
                onChange: (value) => requestEntity.cardNumber = value,
                borderWidht: 1.5,
                borderColor: AppColorManger.primaryColor,
                paddingOut: EdgeInsets.only(bottom: 4.h),
                inputFormatter: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(16),
                ],
                textInputType: TextInputType.number,
              ), //?
              //? Expiration Date
              TextUtiels(
                text: AppTextManger.expirationDate,
                padding: EdgeInsets.only(bottom: 1.h),
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: AppColorManger.primaryColor),
              ),
              MainTextFormFiled(
                readOnly: true,
                controller: controller,
                onTap: () async {
                  await PaymentLogic.selectDateCard(context, controller);
                },
                hintText: FakeDataManger.fakeExpireDate,
                onChange: (value) => requestEntity.expirationDate = value,
                borderWidht: 1.5,
                borderColor: AppColorManger.primaryColor,
                paddingOut: EdgeInsets.only(bottom: 4.h),
                textInputType: TextInputType.datetime,
              ), //?
              //? Secure Code
              TextUtiels(
                text: AppTextManger.secureCode,
                padding: EdgeInsets.only(bottom: 1.h),
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: AppColorManger.primaryColor),
              ),
              MainTextFormFiled(
                hintText: FakeDataManger.fakeSecureCode,
                validator: (value) =>
                    VilidationApp.validatorSecureCode(value: value ?? ""),
                onChange: (value) => requestEntity.secureCode = value,
                borderWidht: 1.5,
                borderColor: AppColorManger.primaryColor,
                paddingOut: EdgeInsets.only(bottom: 4.h),
                inputFormatter: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(4),
                ],
                textInputType: TextInputType.number,
              ),
              Center(
                child: MainButtonWidget(
                  width: 60.w,
                  height: 6.h,
                  radius: 10,
                  text: AppTextManger.pay,
                  onPreesed: () {
                    if (controller.text.isEmpty) {
                      SnackBarUtil.showSnackBar(
                          message: AppTextManger.expirationDate,
                          context: context);
                      return;
                    } else if (formKey.currentState?.validate() ?? false) {
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) => const ShowDailogOtpPayment(),
                      );
                    }
                  },
                ),
              ) //?
            ],
          ),
        ),
      ),
    );
  }
}
