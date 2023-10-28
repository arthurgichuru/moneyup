import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/presentation/receive_money_personal_page/models/receive_money_personal_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ReceiveMoneyPersonalPage.
///
/// This class manages the state of the ReceiveMoneyPersonalPage, including the
/// current receiveMoneyPersonalModelObj
class ReceiveMoneyPersonalController extends GetxController {
  ReceiveMoneyPersonalController(this.receiveMoneyPersonalModelObj);

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController priceController1 = TextEditingController();

  TextEditingController writeashortController = TextEditingController();

  Rx<ReceiveMoneyPersonalModel> receiveMoneyPersonalModelObj;

  @override
  void onClose() {
    super.onClose();
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    countryController.dispose();
    priceController.dispose();
    priceController1.dispose();
    writeashortController.dispose();
  }
}
