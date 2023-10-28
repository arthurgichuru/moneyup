import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/presentation/add_person_screen/models/add_person_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddPersonScreen.
///
/// This class manages the state of the AddPersonScreen, including the
/// current addPersonModelObj
class AddPersonController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  Rx<AddPersonModel> addPersonModelObj = AddPersonModel().obs;

  Rx<bool> saveonlist = false.obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    cardNumberController.dispose();
  }
}
