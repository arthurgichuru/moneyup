import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/presentation/log_in_screen/models/log_in_model.dart';
import 'package:flutter/material.dart';
import 'package:moneyup/data/models/loginDeviceAuth/post_login_device_auth_resp.dart';
import 'package:moneyup/data/apiClient/api_client.dart';

/// A controller class for the LogInScreen.
///
/// This class manages the state of the LogInScreen, including the
/// current logInModelObj
class LogInController extends GetxController {
  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LogInModel> logInModelObj = LogInModel().obs;

  PostLoginDeviceAuthResp postLoginDeviceAuthResp = PostLoginDeviceAuthResp();

  @override
  void onClose() {
    super.onClose();
    phoneController.dispose();
    passwordController.dispose();
  }

  /// Calls the https://nodedemo.dhiwise.co/device/auth/login API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callLoginDeviceAuth(Map req) async {
    try {
      postLoginDeviceAuthResp = await Get.find<ApiClient>().loginDeviceAuth(
        headers: {
          'Content-Type': 'application/json',
        },
        requestData: req,
      );
      _handleLoginDeviceAuthSuccess();
    } on PostLoginDeviceAuthResp catch (e) {
      postLoginDeviceAuthResp = e;
      rethrow;
    }
  }

  /// handles the success response for the API
  void _handleLoginDeviceAuthSuccess() {
    Get.find<PrefUtils>().setToken(postLoginDeviceAuthResp.data?.token ?? '');
  }
}
