import 'controller/menu_controller.dart';
import 'package:flutter/material.dart' hide MenuController;
import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class MenuDraweritem extends StatelessWidget {
  MenuDraweritem(this.controller, {Key? key}) : super(key: key);

  MenuController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Drawer(
        child: Container(
            width: getHorizontalSize(335),
            padding: getPadding(left: 24, top: 77, right: 24, bottom: 77),
            decoration: AppDecoration.bg,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse108,
                      height: getSize(85),
                      width: getSize(85),
                      radius: BorderRadius.circular(getHorizontalSize(42))),
                  Padding(
                      padding: getPadding(top: 13),
                      child: Text("lbl_suzane_jobs".tr,
                          style: CustomTextStyles.headlineLargeGray900)),
                  Padding(
                      padding: getPadding(top: 6),
                      child: Text("lbl_user_gmail_com".tr,
                          style: CustomTextStyles.bodyLargeGray700)),
                  CustomElevatedButton(
                      height: getVerticalSize(25),
                      width: getHorizontalSize(111),
                      text: "lbl_edit_profile".tr,
                      margin: getMargin(left: 2, top: 43),
                      leftIcon: Container(
                          margin: getMargin(right: 17),
                          child:
                              CustomImageView(svgPath: ImageConstant.imgUser)),
                      buttonStyle: CustomButtonStyles.none,
                      buttonTextStyle: CustomTextStyles.titleMediumSemiBold_1,
                      onTap: () {
                        onTapEditprofile();
                      }),
                  CustomElevatedButton(
                      height: getVerticalSize(20),
                      width: getHorizontalSize(110),
                      text: "lbl_history_8".tr,
                      margin: getMargin(top: 44),
                      leftIcon: Container(
                          margin: getMargin(right: 15),
                          child:
                              CustomImageView(svgPath: ImageConstant.imgClock)),
                      buttonStyle: CustomButtonStyles.none,
                      buttonTextStyle: CustomTextStyles.titleMediumSFProDisplay,
                      onTap: () {
                        onTapHistory8();
                      }),
                  CustomElevatedButton(
                      height: getVerticalSize(25),
                      width: getHorizontalSize(188),
                      text: "msg_notifications_settings".tr,
                      margin: getMargin(top: 43),
                      leftIcon: Container(
                          margin: getMargin(right: 15),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgSettingsGray900)),
                      buttonStyle: CustomButtonStyles.none,
                      buttonTextStyle: CustomTextStyles.titleMediumSemiBold_1,
                      onTap: () {
                        onTapNotifications();
                      }),
                  Padding(
                      padding: getPadding(top: 41, bottom: 41),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgFavorite,
                                height: getVerticalSize(15),
                                width: getHorizontalSize(17),
                                margin: getMargin(top: 3, bottom: 6)),
                            Padding(
                                padding: getPadding(left: 16),
                                child: Text("lbl_share_app".tr,
                                    style:
                                        CustomTextStyles.titleMediumSemiBold_1))
                          ]))
                ])));
  }

  /// Navigates to the editProfileScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the editProfileScreen.
  onTapEditprofile() {
    Get.toNamed(
      AppRoutes.editProfileScreen,
    );
  }

  /// Navigates to the historyScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the historyScreen.
  onTapHistory8() {
    Get.toNamed(
      AppRoutes.historyScreen,
    );
  }

  /// Navigates to the notificationsScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the notificationsScreen.
  onTapNotifications() {
    Get.toNamed(
      AppRoutes.notificationsScreen,
    );
  }
}
