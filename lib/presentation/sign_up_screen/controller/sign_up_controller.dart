import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:moneyup/data/models/registerDeviceAuth/post_register_device_auth_resp.dart';
import 'package:moneyup/data/apiClient/api_client.dart';

/// A controller class for the SignUpScreen.
///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {
  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  PostRegisterDeviceAuthResp postRegisterDeviceAuthResp =
      PostRegisterDeviceAuthResp();

  @override
  void onClose() {
    super.onClose();
    phoneController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }

  /// Calls the https://nodedemo.dhiwise.co/device/auth/register API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callRegisterDeviceAuth(Map req) async {
    try {
      postRegisterDeviceAuthResp =
          await Get.find<ApiClient>().registerDeviceAuth(
        headers: {
          'Content-Type': 'application/json',
        },
        requestData: req,
      );
      _handleRegisterDeviceAuthSuccess();
    } on PostRegisterDeviceAuthResp catch (e) {
      postRegisterDeviceAuthResp = e;
      rethrow;
    }
  }

  /// handles the success response for the API
  void _handleRegisterDeviceAuthSuccess() {
    Get.find<PrefUtils>().setId(postRegisterDeviceAuthResp.data?.id ?? '');
  }
}
