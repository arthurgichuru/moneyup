import '../controller/send_money_controller.dart';
import '../models/profile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:moneyup/core/app_export.dart';

// ignore: must_be_immutable
class ProfileItemWidget extends StatelessWidget {
  ProfileItemWidget(
    this.profileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfileItemModel profileItemModelObj;

  var controller = Get.find<SendMoneyController>();

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
