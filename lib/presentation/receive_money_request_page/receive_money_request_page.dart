import 'controller/receive_money_request_controller.dart';
import 'models/receive_money_request_model.dart';
import 'package:flutter/material.dart';
import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/core/utils/validation_functions.dart';
import 'package:moneyup/widgets/custom_elevated_button.dart';
import 'package:moneyup/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ReceiveMoneyRequestPage extends StatelessWidget {
  ReceiveMoneyRequestPage({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  ReceiveMoneyRequestController controller =
      Get.put(ReceiveMoneyRequestController(ReceiveMoneyRequestModel().obs));

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
                                    child: Text("lbl_company_name".tr,
                                        style: theme.textTheme.bodyLarge)),
                                CustomTextFormField(
                                    controller: controller.nameController,
                                    margin: getMargin(top: 7),
                                    hintText: "msg_company_name_here".tr,
                                    hintStyle: CustomTextStyles
                                        .bodyLargePrimaryContainer,
                                    validator: (value) {
                                      if (!isText(value)) {
                                        return "Please enter valid text";
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
                                Container(
                                    margin: getMargin(top: 30),
                                    padding: getPadding(
                                        left: 83,
                                        top: 37,
                                        right: 83,
                                        bottom: 37),
                                    decoration:
                                        AppDecoration.outlinePrimaryContainer,
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("msg_attach_file_optional".tr,
                                              style: CustomTextStyles
                                                  .titleLargePrimaryContainer),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgFilePrimarycontainer,
                                              height: getVerticalSize(26),
                                              width: getHorizontalSize(20),
                                              margin:
                                                  getMargin(top: 7, bottom: 2))
                                        ])),
                                Opacity(
                                    opacity: 0.4,
                                    child: CustomElevatedButton(
                                        text: "lbl_send2".tr.toUpperCase(),
                                        margin: getMargin(top: 42),
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
