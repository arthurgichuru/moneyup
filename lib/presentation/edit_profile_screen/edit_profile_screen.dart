import 'controller/edit_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/core/utils/validation_functions.dart';
import 'package:moneyup/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:moneyup/widgets/app_bar/appbar_title.dart';
import 'package:moneyup/widgets/app_bar/custom_app_bar.dart';
import 'package:moneyup/widgets/custom_elevated_button.dart';
import 'package:moneyup/widgets/custom_icon_button.dart';
import 'package:moneyup/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends GetWidget<EditProfileController> {
  EditProfileScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.gray100,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(68),
                leading: AppbarIconbutton1(
                    svgPath: ImageConstant.imgLocationOnprimary,
                    margin: getMargin(left: 24, top: 6, bottom: 6),
                    onTap: () {
                      onTapLocationone();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_edit_profile".tr)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 27, top: 34, right: 27, bottom: 34),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapProfile();
                                  },
                                  child: SizedBox(
                                      height: getSize(139),
                                      width: getSize(139),
                                      child: Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgEllipse107,
                                                height: getSize(139),
                                                width: getSize(139),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(69)),
                                                alignment: Alignment.center),
                                            CustomIconButton(
                                                height: getSize(30),
                                                width: getSize(30),
                                                margin: getMargin(right: 7),
                                                padding: getPadding(all: 9),
                                                decoration:
                                                    IconButtonStyleHelper
                                                        .outlineGray,
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgTrash))
                                          ])))),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 12),
                                  child: Text("lbl_suzane_jobs".tr,
                                      style: theme.textTheme.displayMedium))),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 15),
                                  child: Text("lbl_edit_profile".tr,
                                      style: theme.textTheme.bodyMedium))),
                          Padding(
                              padding: getPadding(top: 11),
                              child: Text("lbl_name".tr,
                                  style: theme.textTheme.bodyLarge)),
                          CustomTextFormField(
                              controller: controller.nameController,
                              margin: getMargin(top: 5),
                              hintText: "lbl_suzane_jobs".tr,
                              hintStyle: CustomTextStyles.titleMediumSemiBold),
                          Padding(
                              padding: getPadding(top: 25),
                              child: Text("lbl_email".tr,
                                  style: theme.textTheme.bodyLarge)),
                          CustomTextFormField(
                              controller: controller.emailController,
                              margin: getMargin(top: 5),
                              hintText: "lbl_user_gmail_com".tr,
                              hintStyle: CustomTextStyles.titleMediumSemiBold,
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          Padding(
                              padding: getPadding(top: 25),
                              child: Text("lbl_phone".tr,
                                  style: theme.textTheme.bodyLarge)),
                          CustomTextFormField(
                              controller: controller.phoneController,
                              margin: getMargin(top: 5),
                              hintText: "lbl_1234567890".tr,
                              hintStyle: CustomTextStyles.titleMediumSemiBold,
                              textInputAction: TextInputAction.done),
                          CustomElevatedButton(
                              text: "lbl_save".tr.toUpperCase(),
                              margin: getMargin(top: 50, bottom: 5),
                              onTap: () {
                                onTapSave();
                              })
                        ])))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapLocationone() {
    Get.back();
  }

  /// Requests permission to access the camera and storage, and displays a model
  /// sheet for selecting images.
  ///
  /// Throws an error if permission is denied or an error occurs while selecting images.
  onTapProfile() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  /// Navigates to the homeContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the homeContainerScreen.
  onTapSave() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
