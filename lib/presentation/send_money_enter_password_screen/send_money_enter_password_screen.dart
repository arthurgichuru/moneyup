import 'controller/send_money_enter_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:moneyup/widgets/app_bar/appbar_title.dart';
import 'package:moneyup/widgets/app_bar/custom_app_bar.dart';
import 'package:moneyup/widgets/custom_elevated_button.dart';
import 'package:moneyup/widgets/custom_pin_code_text_field.dart';
import 'package:moneyup/presentation/total_bottomsheet/total_bottomsheet.dart';
import 'package:moneyup/presentation/total_bottomsheet/controller/total_controller.dart';

class SendMoneyEnterPasswordScreen
    extends GetWidget<SendMoneyEnterPasswordController> {
  const SendMoneyEnterPasswordScreen({Key? key}) : super(key: key);

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
                title: AppbarTitle(text: "lbl_money_transfer".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 47, top: 108, right: 47),
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
                          padding: getPadding(top: 3),
                          child: Text("msg_enter_your_account2".tr,
                              style: CustomTextStyles.bodyMediumGray900)),
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

  /// Displays a scrollable bottom sheet widget using the [Get] package
  /// and the [TotalBottomsheet] widget.
  ///
  /// The bottom sheet is controlled by the [TotalController]
  /// and is displayed using the [Get.bottomSheet] method with
  /// [isScrollControlled] set to true.

  onTapMakepayment() {
    Get.bottomSheet(
      TotalBottomsheet(
        Get.put(
          TotalController(),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
