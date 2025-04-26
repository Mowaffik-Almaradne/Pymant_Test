import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_experinse/core/function/validation_function.dart';
import 'package:new_experinse/core/resource/color_manger.dart';
import 'package:new_experinse/core/resource/text_manger.dart';
import 'package:new_experinse/core/widget/button/main_button.dart';
import 'package:new_experinse/core/widget/main/main_app_bar_widgte.dart';
import 'package:new_experinse/core/widget/text_filed/main_text_form_filed.dart';
import 'package:new_experinse/core/widget/text_utiles/main_text_utiles.dart';
import 'package:new_experinse/features/auth/presentation/domain/entities/req/loing_request_entity.dart';
import 'package:new_experinse/features/profile/domain/entities/req/info_profile_request_entitiy.dart';
import 'package:new_experinse/features/profile/presentation/widgets/show_dialog_save_information_customer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class InfoProfileCustomerPage extends StatelessWidget {
  const InfoProfileCustomerPage({super.key, required this.entity});
  final LoingRequestEntity entity;
  @override
  Widget build(BuildContext context) {
    InfoProfileRequestEntitiy requestEntitiy = InfoProfileRequestEntitiy();
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: const MainAppBarWidgte(
        mainText: AppTextManger.infoProfileCustomer,
      ),
      body: Scaffold(
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: TextUtiels(
                    padding: EdgeInsets.only(bottom: 4.h),
                    text: AppTextManger.plaseInputCustomerInformation,
                    style: Theme.of(context).textTheme.headlineLarge,
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
                  onChange: (value) => requestEntitiy.userName = value,
                  borderWidht: 1.5,
                  borderColor: AppColorManger.primaryColor,
                  paddingOut: EdgeInsets.only(bottom: 4.h),
                  textInputType: TextInputType.emailAddress,
                ), //?
                //? Email Address :
                TextUtiels(
                  text: AppTextManger.emailAddress,
                  padding: EdgeInsets.only(bottom: 1.h),
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: AppColorManger.primaryColor),
                ),
                MainTextFormFiled(
                  hintText: FakeDataManger.fakeEmailAdrees,
                  initialValue: entity.emailAddrees,
                  validator: (value) =>
                      VilidationApp.validatorEmail(value: value ?? ""),
                  onChange: (value) => requestEntitiy.emailAdrees = value,
                  borderWidht: 1.5,
                  borderColor: AppColorManger.primaryColor,
                  paddingOut: EdgeInsets.only(bottom: 4.h),
                  textInputType: TextInputType.emailAddress,
                ), //?
                //? Phone Number
                TextUtiels(
                  text: AppTextManger.phoneNumber,
                  padding: EdgeInsets.only(bottom: 1.h),
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: AppColorManger.primaryColor),
                ),

                MainTextFormFiled(
                  hintText: FakeDataManger.fakePhoneNumber,
                  validator: (value) =>
                      VilidationApp.validatorPhone(value: value ?? ""),
                  onChange: (value) => requestEntitiy.phoneNumber = value,
                  borderWidht: 1.5,
                  borderColor: AppColorManger.primaryColor,
                  paddingOut: EdgeInsets.only(bottom: 4.h),
                  inputFormatter: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(10),
                  ],
                  textInputType: TextInputType.number,
                ), //?
                //? shipping Address :
                TextUtiels(
                  text: AppTextManger.shippingAddress,
                  padding: EdgeInsets.only(bottom: 1.h),
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: AppColorManger.primaryColor),
                ),
                MainTextFormFiled(
                  validator: (value) =>
                      VilidationApp.validator(value: value ?? ""),
                  onChange: (value) => requestEntitiy.shippingAddrees = value,
                  hintText: FakeDataManger.fakeShippingAdress,
                  borderWidht: 1.5,
                  borderColor: AppColorManger.primaryColor,
                  paddingOut: EdgeInsets.only(bottom: 6.h),
                  textInputType: TextInputType.name,
                ), //?

                //? Save Data Customer
                Center(
                  child: MainButtonWidget(
                    width: 60.w,
                    height: 6.h,
                    radius: 10,
                    text: AppTextManger.save,
                    onPreesed: () {
                      if (formKey.currentState?.validate() ?? false) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const ShowDialogSaveInformationCustomer();
                          },
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
