import 'controller/add_card_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/core/utils/validation_functions.dart';
import 'package:moneyup/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:moneyup/widgets/app_bar/appbar_title.dart';
import 'package:moneyup/widgets/app_bar/custom_app_bar.dart';
import 'package:moneyup/widgets/custom_checkbox_button.dart';
import 'package:moneyup/widgets/custom_elevated_button.dart';
import 'package:moneyup/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddCardOneScreen extends GetWidget<AddCardOneController> {
  AddCardOneScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.gray100,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(68),
                leading: AppbarIconbutton1(
                    svgPath: ImageConstant.imgLocationOnprimary,
                    margin: getMargin(left: 24, top: 6, bottom: 6),
                    onTap: () {
                      onTapLocationone();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_new_card".tr)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 27, top: 30, right: 27, bottom: 30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("lbl_name".tr, style: theme.textTheme.bodyLarge),
                          CustomTextFormField(
                              controller: controller.nameController,
                              margin: getMargin(top: 5),
                              hintText: "lbl_user_name2".tr,
                              hintStyle:
                                  CustomTextStyles.bodyLargePrimaryContainer,
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          Padding(
                              padding: getPadding(top: 25),
                              child: Text("lbl_card_number".tr,
                                  style: theme.textTheme.bodyLarge)),
                          CustomTextFormField(
                              controller: controller.cardNumberController,
                              margin: getMargin(top: 5),
                              hintText: "lbl_card_number".tr,
                              hintStyle:
                                  CustomTextStyles.bodyLargePrimaryContainer,
                              textInputType: TextInputType.number,
                              validator: (value) {
                                if (!isNumeric(value)) {
                                  return "Please enter valid number";
                                }
                                return null;
                              }),
                          Padding(
                              padding: getPadding(top: 25),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: Padding(
                                            padding:
                                                getPadding(top: 1, right: 12),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("lbl_expires".tr,
                                                      style: theme
                                                          .textTheme.bodyLarge),
                                                  CustomTextFormField(
                                                      width: getHorizontalSize(
                                                          168),
                                                      controller: controller
                                                          .dateController,
                                                      margin: getMargin(top: 3),
                                                      hintText: "lbl_date".tr,
                                                      hintStyle: CustomTextStyles
                                                          .bodyLargePrimaryContainer)
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
                                                  Text("lbl_cvv".tr,
                                                      style: theme
                                                          .textTheme.bodyLarge),
                                                  CustomTextFormField(
                                                      width: getHorizontalSize(
                                                          168),
                                                      controller: controller
                                                          .cvvController,
                                                      margin: getMargin(top: 5),
                                                      hintText: "lbl_code".tr,
                                                      hintStyle: CustomTextStyles
                                                          .bodyLargePrimaryContainer,
                                                      textInputAction:
                                                          TextInputAction.done)
                                                ])))
                                  ])),
                          Obx(() => CustomCheckboxButton(
                              text: "msg_save_my_card_details".tr,
                              value: controller.savemycarddetai.value,
                              margin: getMargin(top: 18),
                              textStyle: theme.textTheme.bodyLarge,
                              onChange: (value) {
                                controller.savemycarddetai.value = value;
                              })),
                          Opacity(
                              opacity: 0.4,
                              child: CustomElevatedButton(
                                  text: "lbl_save".tr.toUpperCase(),
                                  margin: getMargin(top: 34, bottom: 5),
                                  buttonStyle: CustomButtonStyles.fillGray,
                                  onTap: () {
                                    onTapSave();
                                  }))
                        ])))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapLocationone() {
    Get.back();
  }

  /// Navigates to the paymentSuccessScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the paymentSuccessScreen.
  onTapSave() {
    Get.toNamed(
      AppRoutes.paymentSuccessScreen,
    );
  }
}
