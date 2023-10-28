import 'controller/payment_success_controller.dart';
import 'package:flutter/material.dart';
import 'package:moneyup/core/app_export.dart';

// ignore_for_file: must_be_immutable
class PaymentSuccessScreen extends GetWidget<PaymentSuccessController> {
  const PaymentSuccessScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: getSize(80),
                width: getSize(80),
                padding: getPadding(
                  left: 29,
                  top: 31,
                  right: 29,
                  bottom: 31,
                ),
                decoration: AppDecoration.white.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder42,
                ),
                child: CustomImageView(
                  svgPath: ImageConstant.imgCheckmarkGray700,
                  height: getVerticalSize(16),
                  width: getHorizontalSize(22),
                  alignment: Alignment.center,
                ),
              ),
              Container(
                width: getHorizontalSize(198),
                margin: getMargin(
                  top: 18,
                ),
                child: Text(
                  "msg_payment_sent_successfully".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineLarge!.copyWith(
                    height: 1.33,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
