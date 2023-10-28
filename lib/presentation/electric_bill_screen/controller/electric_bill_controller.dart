import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/presentation/electric_bill_screen/models/electric_bill_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ElectricBillScreen.
///
/// This class manages the state of the ElectricBillScreen, including the
/// current electricBillModelObj
class ElectricBillController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController group18250Controller = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController dateController1 = TextEditingController();

  TextEditingController otpController = TextEditingController();

  Rx<ElectricBillModel> electricBillModelObj = ElectricBillModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    addressController.dispose();
    phoneController.dispose();
    group18250Controller.dispose();
    dateController.dispose();
    dateController1.dispose();
    otpController.dispose();
  }
}
