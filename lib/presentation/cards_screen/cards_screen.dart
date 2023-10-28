import 'controller/cards_controller.dart';
import 'package:flutter/material.dart';
import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/presentation/activity_screen/activity_screen.dart';
import 'package:moneyup/presentation/cards_screen/cards_screen.dart';
import 'package:moneyup/presentation/home_page/home_page.dart';
import 'package:moneyup/presentation/profile_screen/profile_screen.dart';
import 'package:moneyup/widgets/app_bar/appbar_iconbutton.dart';
import 'package:moneyup/widgets/app_bar/appbar_image.dart';
import 'package:moneyup/widgets/app_bar/appbar_title.dart';
import 'package:moneyup/widgets/app_bar/custom_app_bar.dart';
import 'package:moneyup/widgets/custom_bottom_bar.dart';

class CardsScreen extends GetWidget<CardsController> {
  const CardsScreen({Key? key}) : super(key: key);

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
                title: AppbarTitle(text: "lbl_your_cards".tr),
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
                padding: getPadding(left: 24, top: 34, right: 24, bottom: 34),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () {
                            onTapWalletmastercar();
                          },
                          child: Container(
                              padding: getPadding(
                                  left: 24, top: 22, right: 24, bottom: 22),
                              decoration: AppDecoration.gradientPrimaryToGray,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(left: 2),
                                        child: Text("msg_jonathan_anderson".tr,
                                            style: CustomTextStyles
                                                .labelLargeOnPrimary)),
                                    Padding(
                                        padding: getPadding(left: 2, top: 39),
                                        child: Text(
                                            "msg_1222_3443_9881_1222".tr,
                                            style: CustomTextStyles
                                                .titleMediumOnPrimarySemiBold)),
                                    Padding(
                                        padding: getPadding(top: 24),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_balance".tr,
                                                        style: theme.textTheme
                                                            .labelSmall),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 3),
                                                        child: Text(
                                                            "lbl_31_250".tr,
                                                            style: CustomTextStyles
                                                                .labelLargeOnPrimarySemiBold))
                                                  ]),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgVolume,
                                                  height: getSize(20),
                                                  width: getSize(20),
                                                  margin: getMargin(top: 10))
                                            ]))
                                  ]))),
                      Container(
                          margin: getMargin(top: 36, bottom: 5),
                          padding: getPadding(
                              left: 24, top: 22, right: 24, bottom: 22),
                          decoration: AppDecoration.gradientTealToTeal,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(left: 2),
                                    child: Text("msg_jonathan_anderson".tr,
                                        style: CustomTextStyles
                                            .labelLargeOnPrimary)),
                                Padding(
                                    padding: getPadding(left: 2, top: 39),
                                    child: Text("msg_1222_3443_0881_1222".tr,
                                        style: CustomTextStyles
                                            .titleMediumOnPrimarySemiBold)),
                                Padding(
                                    padding: getPadding(top: 24),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("lbl_balance".tr,
                                                    style: theme
                                                        .textTheme.labelSmall),
                                                Padding(
                                                    padding: getPadding(top: 3),
                                                    child: Text("lbl_31_250".tr,
                                                        style: CustomTextStyles
                                                            .labelLargeOnPrimarySemiBold))
                                              ]),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgVolume,
                                              height: getSize(20),
                                              width: getSize(20),
                                              margin: getMargin(top: 10))
                                        ]))
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

  /// Navigates to the addCardOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the addCardOneScreen.
  onTapPlusone() {
    Get.toNamed(
      AppRoutes.addCardOneScreen,
    );
  }

  /// Navigates to the cardDetailsScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the cardDetailsScreen.
  onTapWalletmastercar() {
    Get.toNamed(
      AppRoutes.cardDetailsScreen,
    );
  }
}
