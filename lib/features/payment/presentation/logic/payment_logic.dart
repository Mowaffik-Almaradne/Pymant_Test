import 'package:flutter/material.dart';

class PaymentLogic {
  
 static Future<void> selectDateCard(
      BuildContext context, TextEditingController controller) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null && pickedDate != DateTime.now()) {
      controller.text = "${pickedDate.toLocal()}".split(' ')[0];
    }
  }
}
