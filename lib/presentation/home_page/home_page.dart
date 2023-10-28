import '../home_page/widgets/options_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'models/options_item_model.dart';
import 'package:flutter/material.dart';
import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/widgets/app_bar/appbar_image.dart';
import 'package:moneyup/widgets/app_bar/appbar_title.dart';
import 'package:moneyup/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController(HomeModel().obs));

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
                title: AppbarTitle(
                    text: "lbl_welcome_back".tr, margin: getMargin(left: 23))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 34, right: 24, bottom: 34),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(360),
                          margin: getMargin(right: 6),
                          padding: getPadding(
                              left: 90, top: 17, right: 90, bottom: 17),
                          decoration: AppDecoration.fillPrimary,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("lbl_total_balance".tr,
                                    style: CustomTextStyles.bodyLargeGray10001),
                                Text("lbl_3_567_12".tr,
                                    style:
                                        CustomTextStyles.displayMediumGray10001)
                              ])),
                      Expanded(
                          child: Padding(
                              padding: getPadding(left: 3, top: 50, right: 3),
                              child: Obx(() => GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          mainAxisExtent: getVerticalSize(201),
                                          crossAxisCount: 2,
                                          mainAxisSpacing:
                                              getHorizontalSize(24),
                                          crossAxisSpacing:
                                              getHorizontalSize(24)),
                                  physics: BouncingScrollPhysics(),
                                  itemCount: controller.homeModelObj.value
                                      .optionsItemList.value.length,
                                  itemBuilder: (context, index) {
                                    OptionsItemModel model = controller
                                        .homeModelObj
                                        .value
                                        .optionsItemList
                                        .value[index];
                                    return OptionsItemWidget(model,
                                        onTapOne: () {
                                      onTapOne();
                                    });
                                  }))))
                    ]))));
  }

  /// Navigates to the mobilePrepaidOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the mobilePrepaidOneScreen.
  onTapOne() {
    Get.toNamed(
      AppRoutes.mobilePrepaidOneScreen,
    );
  }
}
