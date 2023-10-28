import 'controller/mobile_prepaid_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:moneyup/widgets/app_bar/appbar_title.dart';
import 'package:moneyup/widgets/app_bar/custom_app_bar.dart';
import 'package:moneyup/widgets/custom_elevated_button.dart';
import 'package:moneyup/widgets/custom_text_form_field.dart';

class MobilePrepaidTwoScreen extends GetWidget<MobilePrepaidTwoController> {
  const MobilePrepaidTwoScreen({Key? key}) : super(key: key);

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
                padding: getPadding(left: 47, top: 34, right: 47, bottom: 34),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse113,
                          height: getSize(60),
                          width: getSize(60),
                          radius: BorderRadius.circular(getHorizontalSize(30))),
                      Padding(
                          padding: getPadding(top: 4),
                          child: Text("lbl_adom_shafi".tr,
                              style: CustomTextStyles.headlineMediumExtraBold)),
                      Padding(
                          padding: getPadding(top: 2),
                          child: Text("lbl_01704889390".tr,
                              style: theme.textTheme.bodyMedium)),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Text("msg_enter_the_ammount".tr,
                              style: theme.textTheme.headlineMedium)),
                      Padding(
                          padding: getPadding(top: 12),
                          child: Text("msg_enter_ammount_you".tr,
                              style: theme.textTheme.bodyMedium)),
                      CustomTextFormField(
                          controller: controller.priceController,
                          margin: getMargin(top: 22),
                          hintText: "lbl_50".tr,
                          hintStyle: theme.textTheme.titleLarge!,
                          textInputAction: TextInputAction.done),
                      CustomElevatedButton(
                          text: "lbl_continue2".tr.toUpperCase(),
                          margin: getMargin(top: 20, bottom: 5),
                          onTap: () {
                            onTapContinue();
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

  /// Navigates to the mobilePrepaidThreeScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the mobilePrepaidThreeScreen.
  onTapContinue() {
    Get.toNamed(
      AppRoutes.mobilePrepaidThreeScreen,
    );
  }
}
