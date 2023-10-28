import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:moneyup/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: SizedBox(
                width: double.maxFinite,
                child: CustomImageView(
                    svgPath: ImageConstant.imgVector,
                    height: getVerticalSize(108),
                    width: getHorizontalSize(106),
                    alignment: Alignment.center))));
  }
}
