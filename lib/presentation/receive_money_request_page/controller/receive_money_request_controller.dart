import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/presentation/receive_money_request_page/models/receive_money_request_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ReceiveMoneyRequestPage.
///
/// This class manages the state of the ReceiveMoneyRequestPage, including the
/// current receiveMoneyRequestModelObj
class ReceiveMoneyRequestController extends GetxController {
  ReceiveMoneyRequestController(this.receiveMoneyRequestModelObj);

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController priceController1 = TextEditingController();

  TextEditingController writeashortController = TextEditingController();

  Rx<ReceiveMoneyRequestModel> receiveMoneyRequestModelObj;

  @override
  void onClose() {
    super.onClose();
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    nameController.dispose();
    countryController.dispose();
    priceController.dispose();
    priceController1.dispose();
    writeashortController.dispose();
  }
}
