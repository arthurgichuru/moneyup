import 'controller/log_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/core/utils/validation_functions.dart';
import 'package:moneyup/widgets/custom_elevated_button.dart';
import 'package:moneyup/widgets/custom_outlined_button.dart';
import 'package:moneyup/widgets/custom_text_form_field.dart';
import 'package:moneyup/data/models/loginDeviceAuth/post_login_device_auth_req.dart';
import 'package:moneyup/data/models/loginDeviceAuth/post_login_device_auth_resp.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:moneyup/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends GetWidget<LogInController> {
  LogInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.gray100,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 27, top: 40, right: 27, bottom: 40),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgGlobe,
                              height: getSize(80),
                              width: getSize(80)),
                          Padding(
                              padding: getPadding(top: 55),
                              child: Text("lbl_hello".tr,
                                  style: CustomTextStyles.displayMediumBold)),
                          Padding(
                              padding: getPadding(top: 3),
                              child: Text("msg_enter_your_detail".tr,
                                  style: theme.textTheme.bodyLarge)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(top: 36),
                                  child: Text("lbl_phone_or_email".tr,
                                      style:
                                          CustomTextStyles.bodyLargeGray700))),
                          CustomTextFormField(
                              controller: controller.phoneController,
                              margin: getMargin(top: 5),
                              hintText: "lbl_email".tr,
                              hintStyle: CustomTextStyles.bodyLargeGray70018,
                              textInputType: TextInputType.emailAddress,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 25, top: 24, right: 10, bottom: 24),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgArrowdown)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(72)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              },
                              contentPadding:
                                  getPadding(top: 24, right: 30, bottom: 24),
                              borderDecoration: TextFormFieldStyleHelper
                                  .outlinePrimaryContainer),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(top: 25),
                                  child: Text("lbl_password".tr,
                                      style:
                                          CustomTextStyles.bodyLargeGray700))),
                          CustomTextFormField(
                              controller: controller.passwordController,
                              margin: getMargin(top: 5),
                              hintText: "lbl_password".tr,
                              hintStyle: CustomTextStyles.bodyLargeGray70018,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 25, top: 24, right: 10, bottom: 24),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(72)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              obscureText: true,
                              contentPadding:
                                  getPadding(top: 24, right: 30, bottom: 24),
                              borderDecoration: TextFormFieldStyleHelper
                                  .outlinePrimaryContainer),
                          CustomElevatedButton(
                              height: getVerticalSize(72),
                              text: "lbl_sign_in".tr,
                              margin: getMargin(top: 40),
                              buttonTextStyle: CustomTextStyles
                                  .titleMediumOnPrimarySemiBold18,
                              onTap: () {
                                onTapSignin();
                              }),
                          CustomOutlinedButton(
                              text: "msg_sign_in_with_google".tr,
                              margin: getMargin(top: 40),
                              leftIcon: Container(
                                  margin: getMargin(right: 18),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgGoogle)),
                              onTap: () {
                                onTapSigninwith();
                              }),
                          Padding(
                              padding: getPadding(top: 34, bottom: 5),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(bottom: 2),
                                        child: Text("lbl_have_account".tr,
                                            style: CustomTextStyles
                                                .titleLargeBluegray700)),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtSignup();
                                        },
                                        child: Padding(
                                            padding:
                                                getPadding(left: 8, top: 2),
                                            child: Text("lbl_sign_up".tr,
                                                style: CustomTextStyles
                                                    .titleLargePrimary)))
                                  ]))
                        ])))));
  }

  /// calls the [https://nodedemo.dhiwise.co/device/auth/login] API
  ///
  /// validates the form input fields and executes the API if all the fields are valid
  /// It has [PostLoginDeviceAuthReq] as a parameter which will be passed as a API request body
  /// If the call is successful, the function calls the `_onOnTapLogInSuccess()` function.
  /// If the call fails, the function calls the `_onOnTapLogInError()` function.
  ///
  /// Throws a `NoInternetException` if there is no internet connection.
  Future<void> onTapSignin() async {
    if (_formKey.currentState!.validate()) {
      PostLoginDeviceAuthReq postLoginDeviceAuthReq = PostLoginDeviceAuthReq(
        username: controller.phoneController.text,
        password: controller.passwordController.text,
      );
      try {
        await controller.callLoginDeviceAuth(
          postLoginDeviceAuthReq.toJson(),
        );
        _onOnTapLogInSuccess();
      } on PostLoginDeviceAuthResp {
        _onOnTapLogInError();
      } on NoInternetException catch (e) {
        Get.rawSnackbar(message: e.toString());
      } catch (e) {
        //TODO: Handle generic errors
      }
    }
  }

  /// Navigates to the homeContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the homeContainerScreen.
  /// While navigation passing id, as an argument to the
  /// homeContainerScreen
  void _onOnTapLogInSuccess() {
    Get.offAllNamed(AppRoutes.homeContainerScreen, arguments: {
      NavigationArgs.id: controller.postLoginDeviceAuthResp.data?.id
    });
  }

  /// Displays a toast message using the Fluttertoast library.
  void _onOnTapLogInError() {
    Fluttertoast.showToast(
      msg: "Invalid username or password!",
    );
  }

  /// Performs a Google sign-in and returns a [GoogleUser] object.
  ///
  /// If the sign-in is successful, the [onSuccess] callback will be called with
  /// a TODO comment needed to be modified by you.
  /// If the sign-in fails, the [onError] callback will be called with the error message.
  ///
  /// Throws an exception if the Google sign-in process fails.
  onTapSigninwith() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  /// Navigates to the signUpScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the signUpScreen.
  onTapTxtSignup() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }
}
