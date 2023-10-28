import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/presentation/activity_screen/activity_screen.dart';
import 'package:moneyup/presentation/cards_screen/cards_screen.dart';
import 'package:moneyup/presentation/home_page/home_page.dart';
import 'package:moneyup/presentation/profile_screen/profile_screen.dart';
import 'package:moneyup/widgets/app_bar/appbar_image.dart';
import 'package:moneyup/widgets/app_bar/appbar_title.dart';
import 'package:moneyup/widgets/app_bar/custom_app_bar.dart';
import 'package:moneyup/widgets/custom_bottom_bar.dart';
import 'package:moneyup/widgets/custom_switch.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(68),
                leading: AppbarImage(
                    svgPath: ImageConstant.imgGrid,
                    margin: getMargin(left: 24, top: 6, bottom: 6)),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_profile".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 23, top: 31, right: 23, bottom: 31),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse107,
                          height: getSize(139),
                          width: getSize(139),
                          radius: BorderRadius.circular(getHorizontalSize(69))),
                      Padding(
                          padding: getPadding(top: 2),
                          child: Obx(() => Text(
                              controller
                                  .profileModelObj.value.suzanejobsTxt.value,
                              style: theme.textTheme.displayMedium))),
                      Padding(
                          padding: getPadding(top: 8),
                          child: Obx(() => Text(
                              controller.profileModelObj.value.emailTxt.value,
                              style: theme.textTheme.bodyMedium))),
                      Padding(
                          padding: getPadding(left: 4, top: 32, right: 4),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgSettings,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(top: 5)),
                                Padding(
                                    padding: getPadding(left: 16),
                                    child: Text("lbl_password".tr,
                                        style: CustomTextStyles
                                            .titleLargeSemiBold)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getVerticalSize(14),
                                    width: getHorizontalSize(8),
                                    margin: getMargin(top: 8, bottom: 3))
                              ])),
                      Padding(
                          padding: getPadding(left: 4, top: 32),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgFingerprint,
                                    height: getVerticalSize(17),
                                    width: getHorizontalSize(20),
                                    margin: getMargin(top: 7, bottom: 3)),
                                Padding(
                                    padding: getPadding(left: 16),
                                    child: Text("lbl_touch_id".tr,
                                        style: CustomTextStyles
                                            .titleLargeSemiBold)),
                                Spacer(),
                                Obx(() => CustomSwitch(
                                    margin: getMargin(top: 3),
                                    value: controller.isSelectedSwitch.value,
                                    onChange: (value) {
                                      controller.isSelectedSwitch.value = value;
                                    }))
                              ])),
                      Padding(
                          padding: getPadding(left: 4, top: 33, right: 2),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCut,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(top: 2, bottom: 3)),
                                Padding(
                                    padding: getPadding(left: 16),
                                    child: Text("lbl_languages".tr,
                                        style: CustomTextStyles
                                            .titleLargeSemiBold)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getVerticalSize(14),
                                    width: getHorizontalSize(8),
                                    margin: getMargin(top: 5, bottom: 6))
                              ])),
                      Padding(
                          padding: getPadding(left: 4, top: 29, right: 4),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgInfo,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(top: 3, bottom: 2)),
                                Padding(
                                    padding: getPadding(left: 16),
                                    child: Text("lbl_app_information".tr,
                                        style: CustomTextStyles
                                            .titleLargeSemiBold)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getVerticalSize(14),
                                    width: getHorizontalSize(8),
                                    margin: getMargin(top: 6, bottom: 5))
                              ])),
                      Padding(
                          padding:
                              getPadding(left: 4, top: 30, right: 4, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgMusic,
                                    height: getVerticalSize(19),
                                    width: getHorizontalSize(20),
                                    margin: getMargin(top: 3, bottom: 3)),
                                Padding(
                                    padding: getPadding(left: 16),
                                    child: Text("lbl_support".tr,
                                        style: CustomTextStyles
                                            .titleLargeSemiBold)),
                                Spacer(),
                                Padding(
                                    padding: getPadding(top: 3, bottom: 3),
                                    child: Text("lbl_5156446981".tr,
                                        style: CustomTextStyles
                                            .bodySmallBluegray700_1))
                              ]))
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Card:
        return AppRoutes.cardsScreen;
      case BottomBarEnum.Activity:
        return AppRoutes.activityScreen;
      case BottomBarEnum.Profile:
        return AppRoutes.profileScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.cardsScreen:
        return CardsScreen();
      case AppRoutes.activityScreen:
        return ActivityScreen();
      case AppRoutes.profileScreen:
        return ProfileScreen();
      default:
        return DefaultWidget();
    }
  }
}
