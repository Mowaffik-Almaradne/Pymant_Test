import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_experinse/core/widget/text_utiles/main_text_utiles.dart';
import 'package:new_experinse/router/app_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CardPaymentWidget extends StatelessWidget {
  const CardPaymentWidget(
      {super.key,
      required this.colorsCard,
      required this.typeCard,
      this.colorTextCard});
  final List<Color> colorsCard;
  final String typeCard;
  final Color? colorTextCard;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(RouteNamedScreens.paymentCardInfoNameRoute,
              extra: typeCard);
      },
      child: Card(
        margin: EdgeInsets.only(bottom: 3.h),
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          alignment: Alignment.center,
          width: 70.w,
          height: 20.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: colorsCard),
          ),
          //? Nmae Card :
          child: TextUtiels(
            text: typeCard,
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: colorTextCard),
          ),
        ),
      ),
    );
  }
}
