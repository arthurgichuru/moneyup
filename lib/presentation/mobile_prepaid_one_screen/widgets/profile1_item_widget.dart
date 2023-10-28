import '../controller/mobile_prepaid_one_controller.dart';
import '../models/profile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:moneyup/core/app_export.dart';

// ignore: must_be_immutable
class Profile1ItemWidget extends StatelessWidget {
  Profile1ItemWidget(
    this.profile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Profile1ItemModel profile1ItemModelObj;

  var controller = Get.find<MobilePrepaidOneController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(60),
      child: CustomImageView(
        imagePath: ImageConstant.imgEllipse11,
        height: getSize(60),
        width: getSize(60),
        radius: BorderRadius.circular(
          getHorizontalSize(30),
        ),
      ),
    );
  }
}
