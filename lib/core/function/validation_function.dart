import 'package:new_experinse/core/resource/text_manger.dart';

class RagularExpression {
  static RegExp passwordPattern = RegExp(
    r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()_+])[A-Za-z\d!@#$%^&*()_+]{8,}$',
  );
  static RegExp emailPattern = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
  static RegExp phoneRegex = RegExp(r'^\+?[0-9]{10,}$');
  static RegExp otpCode = RegExp(r'^[0-9]+$');
}

class VilidationApp {
  //? validatio any text form filed
  static String? validator({required String value}) {
    if (value.isEmpty) {
      return AppTextManger.requiredField;
    } else {
      return null;
    }
  }

  //? validation to password
  static String? validatorPassword({required String value}) {
    if (value.isEmpty) {
      return AppTextManger.requiredField;
    } else if (value.length < 6) {
      return AppTextManger.passwordlength;
    } else if (!RagularExpression.passwordPattern.hasMatch(value)) {
      return AppTextManger.ensurePasssword;
    }
    return null;
  }

  //? validation to Email
  static String? validatorEmail({required String value}) {
    if (value.isEmpty) {
      return AppTextManger.requiredField;
    } else if (!RagularExpression.emailPattern.hasMatch(value)) {
      return AppTextManger.ensureValidEmail;
    }
    return null;
  }

//? vilidation for phone number
  static String? validatorPhone({required String value}) {
    if (value.isEmpty) {
      return AppTextManger.requiredField;
    } else if (!RagularExpression.phoneRegex.hasMatch(value)) {
      return AppTextManger.ensureValidPhoneNumber;
    }
    return null;
  }

//? validation to Card Number
  static String? validatorCardNumber({required String value}) {
    if (value.isEmpty) {
      return AppTextManger.requiredField;
    } else if (value.length < 15) {
      return AppTextManger.cardNumberlength;
    }
    return null;
  }

  //? validation to Secure Code;
  static String? validatorSecureCode({required String value}) {
    if (value.isEmpty) {
      return AppTextManger.requiredField;
    } else if (value.length < 3) {
      return AppTextManger.cardSecureCodelength;
    }
    return null;
  }

  //? validation to Otp ;
  static String? validatorOtp({required String value}) {
    if (value.isEmpty) {
      return AppTextManger.pleaseEnterAPINcode;
    }
    if (value.length != 4) {
      return AppTextManger.pinCodeMustBe4Digits;
    }
    if (!RagularExpression.otpCode.hasMatch(value)) {
      return AppTextManger.pINCodeMustBeNumeric;
    }
    return null;
  }
}
