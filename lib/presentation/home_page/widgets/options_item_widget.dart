import '../controller/home_controller.dart';
import '../models/options_item_model.dart';
import 'package:flutter/material.dart';
import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class OptionsItemWidget extends StatelessWidget {
  OptionsItemWidget(
    this.optionsItemModelObj, {
    Key? key,
    this.onTapOne,
  }) : super(
          key: key,
        );

  OptionsItemModel optionsItemModelObj;

  var controller = Get.find<HomeController>();

  VoidCallback? onTapOne;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapOne?.call();
      },
      child: Container(
        padding: getPadding(
          left: 20,
          top: 26,
          right: 20,
          bottom: 26,
        ),
        decoration: AppDecoration.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIconButton(
              height: getSize(35),
              width: getSize(35),
              padding: getPadding(
                all: 8,
              ),
              decoration: IconButtonStyleHelper.fillRed,
              child: CustomImageView(
                svgPath: ImageConstant.imgPlay,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 19,
              ),
              child: Obx(
                () => Text(
                  optionsItemModelObj.sendmoneyTxt.value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleLarge!.copyWith(
                    height: 1.30,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 10,
                bottom: 3,
              ),
              child: Obx(
                () => Text(
                  optionsItemModelObj.card3303Txt.value,
                  style: CustomTextStyles.bodyMediumBluegray70001,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
