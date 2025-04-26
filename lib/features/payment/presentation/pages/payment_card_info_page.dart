import 'package:flutter/material.dart';
import 'package:new_experinse/core/class/payment_card_info_class.dart';
import 'package:new_experinse/core/widget/main/main_app_bar_widgte.dart';
import 'package:new_experinse/features/payment/presentation/widgets/account_banking_widget.dart';
import 'package:new_experinse/features/payment/presentation/widgets/payment_card_widget.dart';

class PaymentCardInfoPage extends StatelessWidget {
  const PaymentCardInfoPage({super.key, required this.nameCard});
  final PaymentCardInfoClass nameCard;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarWidgte(mainText: nameCard.nameCard),
      body: Visibility(
        visible: !nameCard.isCard,
        replacement: const AccountBankingWidget(),
        child: const PaymentCardWidget(),
      ),
    );
  }
}
