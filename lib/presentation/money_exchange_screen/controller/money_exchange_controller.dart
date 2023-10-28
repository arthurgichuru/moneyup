import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/presentation/money_exchange_screen/models/money_exchange_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MoneyExchangeScreen.
///
/// This class manages the state of the MoneyExchangeScreen, including the
/// current moneyExchangeModelObj
class MoneyExchangeController extends GetxController {
  TextEditingController priceController = TextEditingController();

  TextEditingController priceController1 = TextEditingController();

  Rx<MoneyExchangeModel> moneyExchangeModelObj = MoneyExchangeModel().obs;

  DateTime selectedLocationoneDate = DateTime.now();

  @override
  void onClose() {
    super.onClose();
    priceController.dispose();
    priceController1.dispose();
  }
}
