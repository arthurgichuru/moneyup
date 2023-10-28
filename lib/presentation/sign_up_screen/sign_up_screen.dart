import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/core/utils/validation_functions.dart';
import 'package:moneyup/widgets/custom_elevated_button.dart';
import 'package:moneyup/widgets/custom_outlined_button.dart';
import 'package:moneyup/widgets/custom_text_form_field.dart';
import 'package:moneyup/data/models/registerDeviceAuth/post_register_device_auth_req.dart';
import 'package:moneyup/data/models/registerDeviceAuth/post_register_device_auth_resp.dart';
import 'package:moneyup/core/constants/user.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:moneyup/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key}) : super(key: key);

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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgGlobe,
                              height: getSize(80),
                              width: getSize(80),
                              alignment: Alignment.center),
                          Padding(
                              padding: getPadding(top: 61),
                              child: Text("lbl_phone_or_email".tr,
                                  style: CustomTextStyles.bodyLargeGray700)),
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
                          Padding(
                              padding: getPadding(top: 25),
                              child: Text("lbl_set_password".tr,
                                  style: CustomTextStyles.bodyLargeGray700)),
                          CustomTextFormField(
                              controller: controller.passwordController,
                              margin: getMargin(top: 9),
                              hintText: "lbl_set_password".tr,
                              hintStyle: CustomTextStyles.bodyLargeGray70018,
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
                          Padding(
                              padding: getPadding(top: 25),
                              child: Text("msg_confirm_password".tr,
                                  style: CustomTextStyles.bodyLargeGray700)),
                          CustomTextFormField(
                              controller: controller.confirmpasswordController,
                              margin: getMargin(top: 9),
                              hintText: "msg_confirm_password".tr,
                              hintStyle: CustomTextStyles.bodyLargeGray70018,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 28, top: 24, right: 10, bottom: 24),
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
                              text: "lbl_sign_up2".tr,
                              margin: getMargin(top: 41),
                              buttonTextStyle: CustomTextStyles
                                  .titleMediumOnPrimarySemiBold18,
                              onTap: () {
                                onTapSignup();
                              }),
                          CustomOutlinedButton(
                              text: "msg_sign_up_with_google".tr,
                              margin: getMargin(top: 40),
                              leftIcon: Container(
                                  margin: getMargin(right: 16),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgGoogle)),
                              onTap: () {
                                onTapSignupwith();
                              }),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 34, bottom: 5),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: getPadding(bottom: 2),
                                            child: Text("lbl_have_account".tr,
                                                style: CustomTextStyles
                                                    .titleLargeBluegray700)),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtSignin();
                                            },
                                            child: Padding(
                                                padding:
                                                    getPadding(left: 8, top: 2),
                                                child: Text("lbl_sign_in2".tr,
                                                    style: CustomTextStyles
                                                        .titleLargePrimary)))
                                      ])))
                        ])))));
  }

  /// calls the [https://nodedemo.dhiwise.co/device/auth/register] API
  ///
  /// validates the form input fields and executes the API if all the fields are valid
  /// It has [PostRegisterDeviceAuthReq] as a parameter which will be passed as a API request body
  /// If the call is successful, the function calls the `_onOnTapSIgnUpSuccess()` function.
  /// If the call fails, the function calls the `_onOnTapSIgnUpError()` function.
  ///
  /// Throws a `NoInternetException` if there is no internet connection.
  Future<void> onTapSignup() async {
    if (_formKey.currentState!.validate()) {
      PostRegisterDeviceAuthReq postRegisterDeviceAuthReq =
          PostRegisterDeviceAuthReq(
        username: controller.phoneController.text,
        password: controller.passwordController.text,
        email: controller.phoneController.text,
        name: controller.phoneController.text,
        role: User.role,
      );
      try {
        await controller.callRegisterDeviceAuth(
          postRegisterDeviceAuthReq.toJson(),
        );
        _onOnTapSIgnUpSuccess();
      } on PostRegisterDeviceAuthResp {
        _onOnTapSIgnUpError();
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
  void _onOnTapSIgnUpSuccess() {
    Get.offAllNamed(
      AppRoutes.homeContainerScreen,
    );
  }

  /// Displays a toast message using the Fluttertoast library.
  void _onOnTapSIgnUpError() {
    Fluttertoast.showToast(
        msg: controller.postRegisterDeviceAuthResp.message.toString() ?? '');
  }

  /// Performs a Google sign-in and returns a [GoogleUser] object.
  ///
  /// If the sign-in is successful, the [onSuccess] callback will be called with
  /// a TODO comment needed to be modified by you.
  /// If the sign-in fails, the [onError] callback will be called with the error message.
  ///
  /// Throws an exception if the Google sign-in process fails.
  onTapSignupwith() async {
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

  /// Navigates to the logInScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the logInScreen.
  onTapTxtSignin() {
    Get.toNamed(
      AppRoutes.logInScreen,
    );
  }
}
