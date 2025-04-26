import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_experinse/core/resource/text_manger.dart';
import 'package:new_experinse/core/widget/text_utiles/main_text_utiles.dart';
import 'package:new_experinse/router/app_router.dart';

class ShowDialogSaveInformationCustomer extends StatelessWidget {
  const ShowDialogSaveInformationCustomer({super.key});
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvoked: (didPop) =>
          context.push(RouteNamedScreens.paymentTypeNameRoute),
      child: AlertDialog(
        title: TextUtiels(
          textAlign: TextAlign.start,
          text: AppTextManger.congratulations,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        content: TextUtiels(
          textAlign: TextAlign.start,
          text: AppTextManger.yourDataHasBeenSavedSuccessfully,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        actions: [
          TextButton(
            child: TextUtiels(
              text: AppTextManger.ok,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            onPressed: () {
              context.push(RouteNamedScreens.paymentTypeNameRoute);
            },
          ),
        ],
      ),
    );
  }
}
