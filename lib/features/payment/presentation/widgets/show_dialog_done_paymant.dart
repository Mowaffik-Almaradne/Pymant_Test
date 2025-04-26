import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_experinse/core/resource/text_manger.dart';
import 'package:new_experinse/core/widget/text_utiles/main_text_utiles.dart';

class DialogPaymentSuccessful extends StatelessWidget {
  const DialogPaymentSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: TextUtiels(
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.headlineLarge,
          text: AppTextManger.paymentSuccessful),
      content: TextUtiels(
        textAlign: TextAlign.start,
        text: AppTextManger.yourPaymentHasBeenProcessedSuccessfully,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      actions: [
        TextButton(
          child: TextUtiels(
            text: AppTextManger.ok,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          onPressed: () {
            context.pop();
          },
        ),
      ],
    );
  }
}
