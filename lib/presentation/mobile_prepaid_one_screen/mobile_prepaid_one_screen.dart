import '../mobile_prepaid_one_screen/widgets/profile1_item_widget.dart';
import 'controller/mobile_prepaid_one_controller.dart';
import 'models/profile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/core/utils/validation_functions.dart';
import 'package:moneyup/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:moneyup/widgets/app_bar/appbar_title.dart';
import 'package:moneyup/widgets/app_bar/custom_app_bar.dart';
import 'package:moneyup/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MobilePrepaidOneScreen extends GetWidget<MobilePrepaidOneController> {
  MobilePrepaidOneScreen({Key? key}) : super(key: key);

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
                title: AppbarTitle(text: "lbl_mobile_prepaid2".tr)),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: getPadding(top: 31),
                    child: Padding(
                        padding: getPadding(left: 24, right: 7),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 3),
                                  child: Text("lbl_prepaid_to".tr,
                                      style: theme.textTheme.bodyLarge)),
                              CustomTextFormField(
                                  controller: controller.nameController,
                                  margin: getMargin(left: 3, top: 3, right: 20),
                                  hintText: "lbl_name_or_number".tr,
                                  hintStyle: CustomTextStyles
                                      .bodyLargePrimaryContainer,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.number,
                                  validator: (value) {
                                    if (!isNumeric(value)) {
                                      return "Please enter valid number";
                                    }
                                    return null;
                                  }),
                              Padding(
                                  padding: getPadding(left: 3, top: 34),
                                  child: Text("lbl_recent".tr,
                                      style: theme.textTheme.headlineMedium)),
                              SizedBox(
                                  height: getVerticalSize(78),
                                  child: Obx(() => ListView.separated(
                                      padding: getPadding(left: 3, top: 18),
                                      scrollDirection: Axis.horizontal,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            width: getHorizontalSize(20));
                                      },
                                      itemCount: controller
                                          .mobilePrepaidOneModelObj
                                          .value
                                          .profile1ItemList
                                          .value
                                          .length,
                                      itemBuilder: (context, index) {
                                        Profile1ItemModel model = controller
                                            .mobilePrepaidOneModelObj
                                            .value
                                            .profile1ItemList
                                            .value[index];
                                        return Profile1ItemWidget(model);
                                      }))),
                              Padding(
                                  padding: getPadding(top: 32),
                                  child: Text("lbl_all_contact".tr,
                                      style: theme.textTheme.headlineMedium)),
                              Container(
                                  margin: getMargin(top: 23, right: 23),
                                  padding: getPadding(
                                      left: 20, top: 15, right: 20, bottom: 15),
                                  decoration: AppDecoration.white,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_a".tr,
                                            style: CustomTextStyles
                                                .headlineMediumSemiBold),
                                        Padding(
                                            padding: getPadding(top: 10),
                                            child: Divider(
                                                color: theme.colorScheme
                                                    .primaryContainer,
                                                indent: getHorizontalSize(16),
                                                endIndent:
                                                    getHorizontalSize(17))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapRowovalone();
                                            },
                                            child: Padding(
                                                padding: getPadding(top: 19),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgOval,
                                                          height: getSize(48),
                                                          width: getSize(48),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      24))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 10,
                                                              top: 2,
                                                              bottom: 4),
                                                          child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "lbl_angelina_druff"
                                                                        .tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .titleMedium),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                4),
                                                                    child: Text(
                                                                        "msg_ac_159_107_1396"
                                                                            .tr,
                                                                        style: theme
                                                                            .textTheme
                                                                            .bodySmall))
                                                              ])),
                                                      Spacer(),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgCheckmark,
                                                          height: getSize(20),
                                                          width: getSize(20),
                                                          margin: getMargin(
                                                              top: 14,
                                                              bottom: 14))
                                                    ]))),
                                        Padding(
                                            padding:
                                                getPadding(top: 16, bottom: 6),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgOval48x48,
                                                      height: getSize(48),
                                                      width: getSize(48),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  24))),
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 10),
                                                      child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "lbl_angelina_lan"
                                                                    .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .titleMedium),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 2),
                                                                child: Text(
                                                                    "msg_ac_159_107_1396"
                                                                        .tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodySmall))
                                                          ])),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgCheckmarkPrimarycontainer,
                                                      height: getSize(20),
                                                      width: getSize(20),
                                                      margin: getMargin(
                                                          top: 14, bottom: 14))
                                                ]))
                                      ])),
                              Container(
                                  margin: getMargin(top: 24, right: 23),
                                  padding: getPadding(
                                      left: 20, top: 15, right: 20, bottom: 15),
                                  decoration: AppDecoration.white,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_b".tr,
                                            style: CustomTextStyles
                                                .headlineMediumSemiBold),
                                        Padding(
                                            padding: getPadding(top: 10),
                                            child: Divider(
                                                color: theme.colorScheme
                                                    .primaryContainer,
                                                indent: getHorizontalSize(16),
                                                endIndent:
                                                    getHorizontalSize(17))),
                                        Padding(
                                            padding: getPadding(top: 19),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgOval1,
                                                      height: getSize(48),
                                                      width: getSize(48),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  24))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 10,
                                                          top: 4,
                                                          bottom: 3),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "lbl_belgeman"
                                                                    .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .titleMedium),
                                                            Text(
                                                                "msg_ac_159_107_1396"
                                                                    .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodySmall)
                                                          ])),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgCheckmarkPrimarycontainer,
                                                      height: getSize(20),
                                                      width: getSize(20),
                                                      margin: getMargin(
                                                          top: 14, bottom: 14))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 16),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgOval2,
                                                      height: getSize(48),
                                                      width: getSize(48),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  24))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 4,
                                                          bottom: 3),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "lbl_brusly".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .titleMedium),
                                                            Text(
                                                                "msg_ac_159_107_1396"
                                                                    .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodySmall)
                                                          ])),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgCheckmarkPrimarycontainer,
                                                      height: getSize(20),
                                                      width: getSize(20),
                                                      margin: getMargin(
                                                          top: 14, bottom: 14))
                                                ])),
                                        Padding(
                                            padding:
                                                getPadding(top: 16, bottom: 7),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgOval3,
                                                      height: getSize(48),
                                                      width: getSize(48),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  24))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 7,
                                                          bottom: 7),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "lbl_baminu".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .titleMedium),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 6),
                                                                child: Text(
                                                                    "msg_ac_159_107_1396"
                                                                        .tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodySmall))
                                                          ])),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgCheckmarkPrimarycontainer,
                                                      height: getSize(20),
                                                      width: getSize(20),
                                                      margin: getMargin(
                                                          top: 14, bottom: 14))
                                                ]))
                                      ]))
                            ]))))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapLocationone() {
    Get.back();
  }

  /// Navigates to the enterMoneyScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the enterMoneyScreen.
  onTapRowovalone() {
    Get.toNamed(
      AppRoutes.enterMoneyScreen,
    );
  }
}
