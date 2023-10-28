import 'controller/notifications_controller.dart';
import 'package:flutter/material.dart';
import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:moneyup/widgets/app_bar/appbar_title.dart';
import 'package:moneyup/widgets/app_bar/custom_app_bar.dart';
import 'package:moneyup/widgets/custom_switch.dart';

class NotificationsScreen extends GetWidget<NotificationsController> {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
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
                title: AppbarTitle(text: "lbl_notifications".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 27, top: 34, right: 27, bottom: 34),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: getPadding(top: 1),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_money_receive".tr,
                                          style: theme.textTheme.titleMedium),
                                      Padding(
                                          padding: getPadding(top: 3),
                                          child: Text(
                                              "msg_if_anyone_sent_you".tr,
                                              style: CustomTextStyles
                                                  .bodyMedium13))
                                    ])),
                            Obx(() => CustomSwitch(
                                margin: getMargin(bottom: 23),
                                value: controller.isSelectedSwitch.value,
                                onChange: (value) {
                                  controller.isSelectedSwitch.value = value;
                                }))
                          ]),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_card_activation".tr,
                                          style: theme.textTheme.titleMedium),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("lbl_if_card_active".tr,
                                              style: CustomTextStyles
                                                  .bodyMedium13))
                                    ]),
                                Obx(() => CustomSwitch(
                                    margin: getMargin(bottom: 21),
                                    value: controller.isSelectedSwitch1.value,
                                    onChange: (value) {
                                      controller.isSelectedSwitch1.value =
                                          value;
                                    }))
                              ])),
                      Padding(
                          padding: getPadding(top: 27),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_update_feature".tr,
                                              style:
                                                  theme.textTheme.titleMedium),
                                          Padding(
                                              padding: getPadding(top: 3),
                                              child: Text(
                                                  "msg_if_any_new_update".tr,
                                                  style: CustomTextStyles
                                                      .bodyMedium13))
                                        ])),
                                Obx(() => CustomSwitch(
                                    margin: getMargin(bottom: 23),
                                    value: controller.isSelectedSwitch2.value,
                                    onChange: (value) {
                                      controller.isSelectedSwitch2.value =
                                          value;
                                    }))
                              ])),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_cash_in".tr,
                                          style: theme.textTheme.titleMedium),
                                      Padding(
                                          padding: getPadding(top: 5),
                                          child: Text(
                                              "msg_if_any_cash_in_your".tr,
                                              style: CustomTextStyles
                                                  .bodyMedium13))
                                    ]),
                                Obx(() => CustomSwitch(
                                    margin: getMargin(bottom: 23),
                                    value: controller.isSelectedSwitch3.value,
                                    onChange: (value) {
                                      controller.isSelectedSwitch3.value =
                                          value;
                                    }))
                              ])),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_money_request".tr,
                                              style:
                                                  theme.textTheme.titleMedium),
                                          Padding(
                                              padding: getPadding(top: 3),
                                              child: Text(
                                                  "msg_if_anyone_sent_you2".tr,
                                                  style: CustomTextStyles
                                                      .bodyMedium13))
                                        ])),
                                Obx(() => CustomSwitch(
                                    margin: getMargin(bottom: 23),
                                    value: controller.isSelectedSwitch4.value,
                                    onChange: (value) {
                                      controller.isSelectedSwitch4.value =
                                          value;
                                    }))
                              ])),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_money_trasfer".tr,
                                              style:
                                                  theme.textTheme.titleMedium),
                                          Padding(
                                              padding: getPadding(top: 3),
                                              child: Text(
                                                  "msg_if_you_sent_money".tr,
                                                  style: CustomTextStyles
                                                      .bodyMedium13))
                                        ])),
                                Obx(() => CustomSwitch(
                                    margin: getMargin(bottom: 23),
                                    value: controller.isSelectedSwitch5.value,
                                    onChange: (value) {
                                      controller.isSelectedSwitch5.value =
                                          value;
                                    }))
                              ])),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("msg_number_notification".tr,
                                          style: theme.textTheme.titleMedium),
                                      Padding(
                                          padding: getPadding(top: 5),
                                          child: Text(
                                              "msg_send_notification".tr,
                                              style: CustomTextStyles
                                                  .bodyMedium13))
                                    ]),
                                Obx(() => CustomSwitch(
                                    margin: getMargin(bottom: 23),
                                    value: controller.isSelectedSwitch6.value,
                                    onChange: (value) {
                                      controller.isSelectedSwitch6.value =
                                          value;
                                    }))
                              ])),
                      Padding(
                          padding: getPadding(top: 25, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("msg_email_notification".tr,
                                          style: theme.textTheme.titleMedium),
                                      Padding(
                                          padding: getPadding(top: 5),
                                          child: Text(
                                              "msg_send_notification2".tr,
                                              style: CustomTextStyles
                                                  .bodyMedium13))
                                    ]),
                                Obx(() => CustomSwitch(
                                    margin: getMargin(bottom: 23),
                                    value: controller.isSelectedSwitch7.value,
                                    onChange: (value) {
                                      controller.isSelectedSwitch7.value =
                                          value;
                                    }))
                              ]))
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapLocationone() {
    Get.back();
  }
}
