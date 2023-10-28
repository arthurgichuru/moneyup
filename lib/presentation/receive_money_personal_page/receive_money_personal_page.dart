import 'controller/receive_money_personal_controller.dart';
import 'models/receive_money_personal_model.dart';
import 'package:flutter/material.dart';
import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/core/utils/validation_functions.dart';
import 'package:moneyup/widgets/custom_elevated_button.dart';
import 'package:moneyup/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ReceiveMoneyPersonalPage extends StatelessWidget {
  ReceiveMoneyPersonalPage({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  ReceiveMoneyPersonalController controller =
      Get.put(ReceiveMoneyPersonalController(ReceiveMoneyPersonalModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.gray100,
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Padding(
                          padding: getPadding(left: 27, top: 25, right: 27),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          child: Padding(
                                              padding: getPadding(right: 12),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_first_name".tr,
                                                        style: theme.textTheme
                                                            .bodyLarge),
                                                    CustomTextFormField(
                                                        width:
                                                            getHorizontalSize(
                                                                168),
                                                        controller: controller
                                                            .firstNameController,
                                                        margin:
                                                            getMargin(top: 5),
                                                        hintText: "lbl_name".tr,
                                                        hintStyle: CustomTextStyles
                                                            .bodyLargePrimaryContainer,
                                                        validator: (value) {
                                                          if (!isText(value)) {
                                                            return "Please enter valid text";
                                                          }
                                                          return null;
                                                        })
                                                  ]))),
                                      Expanded(
                                          child: Padding(
                                              padding: getPadding(left: 12),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_last_name".tr,
                                                        style: theme.textTheme
                                                            .bodyLarge),
                                                    CustomTextFormField(
                                                        width:
                                                            getHorizontalSize(
                                                                168),
                                                        controller: controller
                                                            .lastNameController,
                                                        margin:
                                                            getMargin(top: 5),
                                                        hintText: "lbl_name".tr,
                                                        hintStyle: CustomTextStyles
                                                            .bodyLargePrimaryContainer,
                                                        validator: (value) {
                                                          if (!isText(value)) {
                                                            return "Please enter valid text";
                                                          }
                                                          return null;
                                                        })
                                                  ])))
                                    ]),
                                Padding(
                                    padding: getPadding(top: 26),
                                    child: Text("lbl_email".tr,
                                        style: theme.textTheme.bodyLarge)),
                                CustomTextFormField(
                                    controller: controller.emailController,
                                    margin: getMargin(top: 5),
                                    hintText: "lbl_your_email_here".tr,
                                    hintStyle: CustomTextStyles
                                        .bodyLargePrimaryContainer,
                                    textInputType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    }),
                                Padding(
                                    padding: getPadding(top: 27),
                                    child: Text("lbl_country".tr,
                                        style: theme.textTheme.bodyLarge)),
                                CustomTextFormField(
                                    controller: controller.countryController,
                                    margin: getMargin(top: 3),
                                    hintText: "lbl_select_country".tr,
                                    hintStyle: CustomTextStyles
                                        .bodyLargePrimaryContainer),
                                Padding(
                                    padding: getPadding(top: 25),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: Padding(
                                                  padding:
                                                      getPadding(right: 12),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("lbl_ammount".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge),
                                                        CustomTextFormField(
                                                            width:
                                                                getHorizontalSize(
                                                                    168),
                                                            controller: controller
                                                                .priceController,
                                                            margin: getMargin(
                                                                top: 5),
                                                            hintText:
                                                                "lbl_0_00".tr,
                                                            hintStyle:
                                                                CustomTextStyles
                                                                    .bodyLargePrimaryContainer)
                                                      ]))),
                                          Expanded(
                                              child: Padding(
                                                  padding: getPadding(left: 12),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("lbl_currency".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge),
                                                        CustomTextFormField(
                                                            width:
                                                                getHorizontalSize(
                                                                    168),
                                                            controller: controller
                                                                .priceController1,
                                                            margin: getMargin(
                                                                top: 3),
                                                            hintText:
                                                                "lbl_usd".tr,
                                                            hintStyle:
                                                                CustomTextStyles
                                                                    .bodyLargePrimaryContainer)
                                                      ])))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 27),
                                    child: Text("lbl_massage".tr,
                                        style: theme.textTheme.bodyLarge)),
                                CustomTextFormField(
                                    controller:
                                        controller.writeashortController,
                                    margin: getMargin(top: 3),
                                    hintText: "msg_write_a_short_note".tr,
                                    hintStyle: CustomTextStyles
                                        .bodyLargePrimaryContainer,
                                    textInputAction: TextInputAction.done),
                                Opacity(
                                    opacity: 0.4,
                                    child: CustomElevatedButton(
                                        text: "lbl_send2".tr.toUpperCase(),
                                        margin: getMargin(top: 40),
                                        buttonStyle:
                                            CustomButtonStyles.fillGray,
                                        onTap: () {
                                          onTapSend();
                                        }))
                              ]))
                    ])))));
  }

  /// Navigates to the requestSentScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the requestSentScreen.
  onTapSend() {
    Get.toNamed(
      AppRoutes.requestSentScreen,
    );
  }
}
