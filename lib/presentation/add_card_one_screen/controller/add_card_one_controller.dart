import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/presentation/add_card_one_screen/models/add_card_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddCardOneScreen.
///
/// This class manages the state of the AddCardOneScreen, including the
/// current addCardOneModelObj
class AddCardOneController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController cvvController = TextEditingController();

  Rx<AddCardOneModel> addCardOneModelObj = AddCardOneModel().obs;

  Rx<bool> savemycarddetai = false.obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    cardNumberController.dispose();
    dateController.dispose();
    cvvController.dispose();
  }
}
