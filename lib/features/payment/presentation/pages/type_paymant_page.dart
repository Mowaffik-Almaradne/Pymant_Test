import 'package:flutter/material.dart';
import 'package:new_experinse/core/resource/color_manger.dart';
import 'package:new_experinse/core/resource/text_manger.dart';
import 'package:new_experinse/core/widget/main/main_app_bar_widgte.dart';
import 'package:new_experinse/core/widget/text_utiles/main_text_utiles.dart';
import 'package:new_experinse/features/payment/presentation/widgets/card_payment_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TypePaymantPage extends StatelessWidget {
  const TypePaymantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBarWidgte(
        mainText: AppTextManger.typePaymant,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: TextUtiels(
                padding: EdgeInsets.only(bottom: 6.h, top: 4.h),
                text: AppTextManger.choosePaymantType,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            //? Master Card :
            const CardPaymentWidget(
              typeCard: AppTextManger.masterCard,
              colorsCard: [
                AppColorManger.colorOrange,
                AppColorManger.validationColor
              ],
            ), //?
            //? Visa Card :
            const CardPaymentWidget(
              typeCard: AppTextManger.visaCard,
              colorsCard: [
                AppColorManger.primaryColor,
                AppColorManger.whiteColor
              ],
            ), //?
            //? Visa Card :
            const CardPaymentWidget(
              typeCard: AppTextManger.payPal,
              colorsCard: [
                AppColorManger.primaryColor,
                Colors.cyan,
              ],
            ), //?
            const CardPaymentWidget(
              typeCard: AppTextManger.bankTransfer,
              colorTextCard: AppColorManger.blackColor,
              colorsCard: [
                Colors.transparent,
                Colors.transparent,
              ],
            ), //?
          ],
        ),
      ),
    );
  }
}
