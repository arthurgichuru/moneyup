import 'controller/mobile_prepaid_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:moneyup/widgets/app_bar/appbar_title.dart';
import 'package:moneyup/widgets/app_bar/custom_app_bar.dart';
import 'package:moneyup/widgets/custom_elevated_button.dart';
import 'package:moneyup/widgets/custom_pin_code_text_field.dart';

class MobilePrepaidThreeScreen extends GetWidget<MobilePrepaidThreeController> {
  const MobilePrepaidThreeScreen({Key? key}) : super(key: key);

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
                title: AppbarTitle(text: "lbl_mobile_prepaid2".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 47, top: 54, right: 47, bottom: 54),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: getHorizontalSize(221),
                          child: Text("msg_enter_your_account".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.headlineMedium!
                                  .copyWith(height: 1.19))),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Text("msg_enter_your_send".tr,
                              style: theme.textTheme.bodyMedium)),
                      Obx(() => CustomPinCodeTextField(
                          context: context,
                          margin: getMargin(top: 25),
                          controller: controller.otpController.value,
                          onChanged: (value) {})),
                      CustomElevatedButton(
                          text: "lbl_make_payment".tr.toUpperCase(),
                          margin: getMargin(top: 24, bottom: 5),
                          onTap: () {
                            onTapMakepayment();
                          })
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapLocationone() {
    Get.back();
  }

  /// Navigates to the rechargeSuccessScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the rechargeSuccessScreen.
  onTapMakepayment() {
    Get.toNamed(
      AppRoutes.rechargeSuccessScreen,
    );
  }
}
