import 'controller/enter_money_controller.dart';
import 'package:flutter/material.dart';
import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/widgets/app_bar/appbar_iconbutton.dart';
import 'package:moneyup/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:moneyup/widgets/app_bar/appbar_title.dart';
import 'package:moneyup/widgets/app_bar/custom_app_bar.dart';
import 'package:moneyup/widgets/custom_elevated_button.dart';
import 'package:moneyup/widgets/custom_text_form_field.dart';

class EnterMoneyScreen extends GetWidget<EnterMoneyController> {
  const EnterMoneyScreen({Key? key}) : super(key: key);

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
                title: AppbarTitle(text: "lbl_money_transfer".tr),
                actions: [
                  AppbarIconbutton(
                      svgPath: ImageConstant.imgPlus,
                      margin: getMargin(left: 24, top: 6, right: 24, bottom: 6),
                      onTap: () {
                        onTapPlusone();
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 34, bottom: 34),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse8130x130,
                          height: getSize(130),
                          width: getSize(130),
                          radius: BorderRadius.circular(getHorizontalSize(65))),
                      Padding(
                          padding: getPadding(top: 6),
                          child: Text("lbl_kate_morgan".tr,
                              style: theme.textTheme.headlineMedium)),
                      Padding(
                          padding: getPadding(top: 1),
                          child: Text("lbl_159_107_1365".tr,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Text("lbl_60_00".tr,
                              style: CustomTextStyles.displayLargeBold)),
                      CustomTextFormField(
                          controller: controller.massageboxoneController,
                          margin: getMargin(left: 27, top: 27, right: 27),
                          hintText: "msg_type_your_massage".tr,
                          hintStyle: CustomTextStyles.bodySmallGray700,
                          textInputAction: TextInputAction.done,
                          contentPadding: getPadding(
                              left: 18, top: 15, right: 18, bottom: 15),
                          borderDecoration:
                              TextFormFieldStyleHelper.outlinePrimaryContainer),
                      Padding(
                          padding: getPadding(left: 27, top: 36, right: 27),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_select_card".tr,
                                    style: theme.textTheme.headlineMedium),
                                Padding(
                                    padding: getPadding(top: 11),
                                    child: Text("lbl_add_card".tr,
                                        style: CustomTextStyles
                                            .titleMediumPrimary))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: getPadding(left: 27, top: 20, bottom: 5),
                              child: IntrinsicWidth(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                    Expanded(
                                        child: Container(
                                            padding: getPadding(
                                                left: 20,
                                                top: 18,
                                                right: 20,
                                                bottom: 18),
                                            decoration: AppDecoration
                                                .gradientPrimaryToGray,
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 2),
                                                      child: Text(
                                                          "msg_jonathan_anderson"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .labelMediumBold)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 2, top: 32),
                                                      child: Text(
                                                          "msg_1222_3443_9881_1222"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .titleSmallOnPrimary)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 21),
                                                      child: Row(children: [
                                                        Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "lbl_balance"
                                                                      .tr,
                                                                  style: CustomTextStyles
                                                                      .overpassOnPrimary),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              2),
                                                                  child: Text(
                                                                      "lbl_31_250"
                                                                          .tr,
                                                                      style: theme
                                                                          .textTheme
                                                                          .labelMedium))
                                                            ]),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgVolume,
                                                            height: getSize(16),
                                                            width: getSize(16),
                                                            margin: getMargin(
                                                                top: 8))
                                                      ]))
                                                ]))),
                                    Expanded(
                                        child: Container(
                                            margin: getMargin(left: 20),
                                            padding: getPadding(
                                                left: 20,
                                                top: 18,
                                                right: 20,
                                                bottom: 18),
                                            decoration: AppDecoration
                                                .gradientTealToTeal,
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 2),
                                                      child: Text(
                                                          "msg_jonathan_anderson"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .labelMediumBold)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 2, top: 32),
                                                      child: Text(
                                                          "msg_1222_3443_0881_1222"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .titleSmallOnPrimary)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 21),
                                                      child: Row(children: [
                                                        Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "lbl_balance"
                                                                      .tr,
                                                                  style: CustomTextStyles
                                                                      .overpassOnPrimary),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              2),
                                                                  child: Text(
                                                                      "lbl_31_250"
                                                                          .tr,
                                                                      style: theme
                                                                          .textTheme
                                                                          .labelMedium))
                                                            ]),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgVolume,
                                                            height: getSize(16),
                                                            width: getSize(16),
                                                            margin: getMargin(
                                                                top: 8))
                                                      ]))
                                                ])))
                                  ]))))
                    ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_continue".tr.toUpperCase(),
                margin: getMargin(left: 27, right: 28, bottom: 29),
                onTap: () {
                  onTapContinue();
                })));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapLocationone() {
    Get.back();
  }

  /// Navigates to the addPersonScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the addPersonScreen.
  onTapPlusone() {
    Get.toNamed(
      AppRoutes.addPersonScreen,
    );
  }

  /// Navigates to the sendMoneyEnterPasswordScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the sendMoneyEnterPasswordScreen.
  onTapContinue() {
    Get.toNamed(
      AppRoutes.sendMoneyEnterPasswordScreen,
    );
  }
}
