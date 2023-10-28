import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/presentation/mobile_prepaid_one_screen/models/mobile_prepaid_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MobilePrepaidOneScreen.
///
/// This class manages the state of the MobilePrepaidOneScreen, including the
/// current mobilePrepaidOneModelObj
class MobilePrepaidOneController extends GetxController {
  TextEditingController nameController = TextEditingController();

  Rx<MobilePrepaidOneModel> mobilePrepaidOneModelObj =
      MobilePrepaidOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
  }
}
