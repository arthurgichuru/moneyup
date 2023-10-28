import '../controller/history_controller.dart';
import '../models/history_item_model.dart';
import 'package:flutter/material.dart';
import 'package:moneyup/core/app_export.dart';

// ignore: must_be_immutable
class HistoryItemWidget extends StatelessWidget {
  HistoryItemWidget(
    this.historyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HistoryItemModel historyItemModelObj;

  var controller = Get.find<HistoryController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(
              () => Text(
                historyItemModelObj.octoberTxt.value,
                style: theme.textTheme.titleSmall,
              ),
            ),
            Obx(
              () => Text(
                historyItemModelObj.dateTxt.value,
                style: CustomTextStyles.bodySmallBluegray700_1,
              ),
            ),
          ],
        ),
        Padding(
          padding: getPadding(
            top: 10,
            bottom: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "lbl_amount".tr,
                style: theme.textTheme.bodyMedium,
              ),
              Padding(
                padding: getPadding(
                  left: 6,
                ),
                child: Text(
                  "lbl_480".tr,
                  style: CustomTextStyles.titleSmallBold,
                ),
              ),
              Spacer(),
              Padding(
                padding: getPadding(
                  top: 2,
                ),
                child: Obx(
                  () => Text(
                    historyItemModelObj.unpaidTxt.value,
                    style: CustomTextStyles.labelLargeGreenA70001,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
