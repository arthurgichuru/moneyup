import '../pay_bill_screen/widgets/pay_bill_item_widget.dart';
import 'controller/pay_bill_controller.dart';
import 'models/pay_bill_item_model.dart';
import 'package:flutter/material.dart';
import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:moneyup/widgets/app_bar/appbar_title.dart';
import 'package:moneyup/widgets/app_bar/custom_app_bar.dart';

class PayBillScreen extends GetWidget<PayBillController> {
  const PayBillScreen({Key? key}) : super(key: key);

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
                title: AppbarTitle(text: "lbl_pay_bill".tr)),
            body: Padding(
                padding: getPadding(left: 27, top: 34, right: 27),
                child: Obx(() => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(201),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(24),
                        crossAxisSpacing: getHorizontalSize(24)),
                    physics: BouncingScrollPhysics(),
                    itemCount: controller
                        .payBillModelObj.value.payBillItemList.value.length,
                    itemBuilder: (context, index) {
                      PayBillItemModel model = controller
                          .payBillModelObj.value.payBillItemList.value[index];
                      return PayBillItemWidget(model, onTapOne: () {
                        onTapOne();
                      });
                    })))));
  }

  /// Navigates to the electricBillScreen when the action is triggered.
  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the electricBillScreen.
  onTapOne() {
    Get.toNamed(AppRoutes.electricBillScreen);
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapLocationone() {
    Get.back();
  }
}
